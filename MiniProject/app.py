from flask import Flask, render_template, jsonify
import numpy as np
import sounddevice as sd
import librosa
import joblib
import threading
import time
from alert_system import send_email, show_push_notification

app = Flask(__name__)

# Load model
model = joblib.load("scream_model.pkl")
RATE = 16000
DURATION = 1
running = False
status = {"message": "Idle", "color": "gray"}

def extract_features(audio):
    try:
        mfcc = librosa.feature.mfcc(y=audio, sr=RATE, n_mfcc=13)
        return np.mean(mfcc.T, axis=0)
    except:
        return None

def listen():
    global running, status
    while running:
        try:
            audio = sd.rec(int(RATE * DURATION), samplerate=RATE, channels=1, dtype='float32')
            sd.wait()
            audio = audio.flatten()

            features = extract_features(audio)
            if features is not None:
                prediction = model.predict([features])[0]
                if prediction == 1:
                    status = {"message": "🚨 Scream Detected!", "color": "red"}
                    send_email()
                    show_push_notification()
                else:
                    status = {"message": "✅ Normal Sound", "color": "green"}
            else:
                status = {"message": "⚠️ Feature extraction failed", "color": "orange"}
        except Exception as e:
            status = {"message": f"❌ Error: {e}", "color": "red"}

        time.sleep(0.5)


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/start")
def start():
    global running
    if not running:
        running = True
        threading.Thread(target=listen, daemon=True).start()
    return jsonify({"status": "started"})


@app.route("/stop")
def stop():
    global running, status
    running = False
    status = {"message": "⏹ Stopped", "color": "orange"}
    return jsonify({"status": "stopped"})


@app.route("/status")
def get_status():
    return jsonify(status)


if __name__ == "__main__":
    app.run(debug=True)
