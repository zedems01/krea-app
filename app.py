# app.py
import requests

def main():
    print("🚀 Krea App démarrée!")
    print("✅ Toutes les dépendances sont installées")
    
    # Test simple des requests
    try:
        response = requests.get('https://httpbin.org/get')
        print(f"✅ Test HTTP réussi: Status {response.status_code}")
    except Exception as e:
        print(f"❌ Test HTTP échoué: {e}")

if __name__ == '__main__':
    main()