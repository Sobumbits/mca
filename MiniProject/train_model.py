import os
import numpy as np
import librosa
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import (
    accuracy_score,
    precision_score,
    recall_score,
    f1_score,
    confusion_matrix,
    ConfusionMatrixDisplay,
    classification_report
)
import joblib
import matplotlib.pyplot as plt

# --- Feature extraction function ---
def extract_features(file_path):
    try:
        audio, sr = librosa.load(file_path, sr=16000)
        mfcc = librosa.feature.mfcc(y=audio, sr=sr, n_mfcc=13)
        return np.mean(mfcc.T, axis=0)
    except:
        return None

# --- Load dataset ---
X, y = [], []
for label, category in enumerate(["non_scream", "scream"]):
    folder = f"dataset/{category}"
    for filename in os.listdir(folder):
        path = os.path.join(folder, filename)
        features = extract_features(path)
        if features is not None:
            X.append(features)
            y.append(label)

X = np.array(X)
y = np.array(y)

# --- Split dataset ---
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# --- Train Random Forest model ---
model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(X_train, y_train)

# --- Predictions ---
y_pred = model.predict(X_test)

# --- Evaluation metrics ---
accuracy = accuracy_score(y_test, y_pred)
precision = precision_score(y_test, y_pred)
recall = recall_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred)

# Confusion matrix
cm = confusion_matrix(y_test, y_pred)
tn, fp, fn, tp = cm.ravel()
specificity = tn / (tn + fp)

# --- Print metrics ---
print(f"Accuracy: {accuracy:.4f}")
print(f"Precision: {precision:.4f}")
print(f"Recall (Sensitivity): {recall:.4f}")
print(f"F1 Score: {f1:.4f}")
print(f"Specificity: {specificity:.4f}")

# --- Classification report ---
print("\nClassification Report:")
print(classification_report(y_test, y_pred, target_names=["non_scream", "scream"]))

# --- Confusion matrix visualization ---
disp = ConfusionMatrixDisplay(confusion_matrix=cm, display_labels=["non_scream", "scream"])
disp.plot(cmap="Blues")
plt.title("Confusion Matrix")
plt.show()

# --- Save trained model ---
joblib.dump(model, "scream_model.pkl")
