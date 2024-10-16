@echo off

"C:\Users\K C T\AppData\Local\Programs\Python\Python313\Scripts\pyarmor.exe" obfuscate --recursive payload.py

"C:\Users\K C T\AppData\Local\Programs\Python\Python313\Scripts\pyinstaller.exe" --onefile --noconsole payload.py
