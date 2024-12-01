@echo off

"C:\Users\K C T\AppData\Local\Programs\Python\Python313\Scripts\pyarmor-7.exe" obfuscate --recursive payload.py

"C:\Users\K C T\AppData\Local\Programs\Python\Python313\Scripts\pyinstaller.exe" --onefile --noconsole icon=word.ico payload.py
