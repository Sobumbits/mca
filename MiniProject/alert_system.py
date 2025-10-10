# alert_system.py
from config import *
import smtplib
from email.mime.text import MIMEText
from plyer import notification
import geocoder

def get_location_link():
    try:
        g = geocoder.ip('me')
        lat, lng = g.latlng
        return f"https://www.google.com/maps?q={lat},{lng}"
    except:
        return "Location not available"

def send_email():
    try:
        location_link = get_location_link()
        message_body = f"🚨 ALERT: Human scream detected by the system.\n\nLocation: {location_link}"

        msg = MIMEText(message_body)
        msg['Subject'] = "🚨 Crime Alert"
        msg['From'] = EMAIL_SENDER
        msg['To'] = EMAIL_RECEIVER

        with smtplib.SMTP_SSL("smtp.gmail.com", 465) as server:
            server.login(EMAIL_SENDER, EMAIL_PASSWORD)
            server.send_message(msg)
        print("✅ Email sent")
    except Exception as e:
        print("❌ Email error:", e)

def show_push_notification():
    try:
        location_link = get_location_link()
        notification.notify(
            title='🚨 Scream Detected',
            message=f'Human scream detected!\nLocation: {location_link}',
            timeout=5
        )
    except Exception as e:
        print("❌ Push notification error:", e)
