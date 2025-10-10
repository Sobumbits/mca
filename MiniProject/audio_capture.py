import pyaudio
import numpy as np
import librosa
import joblib
import time
from alert_system import send_email, show_push_notification

# Load the trained scream detection model
model = joblib.load("scream_model.pkl")

# Audio recording parameters
CHUNK = 16000  # 1 second of audio at 16kHz
FORMAT = pyaudio.paInt16
CHANNELS = 1
RATE = 16000
RECORD_SECONDS = 1  # 1-second window

# Set up audio stream
p = pyaudio.PyAudio()
stream = p.open(format=FORMAT,
                channels=CHANNELS,
                rate=RATE,
                input=True,
                frames_per_buffer=CHUNK)

def extract_features_from_audio(audio_data):
    try:
        mfcc = librosa.feature.mfcc(y=audio_data, sr=RATE, n_mfcc=13)
        return np.mean(mfcc.T, axis=0)
    except Exception as e:
        print("❌ Feature extraction error:", e)
        return None

print("🎤 Listening for screams... (Press Ctrl+C to stop)")

try:
    while True:
        data = stream.read(CHUNK, exception_on_overflow=False)
        audio_np = np.frombuffer(data, dtype=np.int16).astype(np.float32) / 32768.0
        features = extract_features_from_audio(audio_np)

        if features is not None:
            prediction = model.predict([features])[0]
            if prediction == 1:
                print("🚨 [ALERT] Human scream detected! Triggering notifications...")
                send_email()
                show_push_notification()
            else:
                print("✅ [OK] Normal sound.")
        else:
            print("⚠️ Could not extract features.")
        time.sleep(0.1)

except KeyboardInterrupt:
    print("\n🛑 Stopping...")

finally:
    stream.stop_stream()
    stream.close()
    p.terminate()
