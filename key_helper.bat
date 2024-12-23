@echo off
setlocal

set "keystore_name=user.keystore"
set "storepass=YourStorePass"
set "keypass=YourKeyPass"
set "alias_name=YourAliasName"
set "dname=CN=John Doe, OU=Development, O=Example Inc., L=New York, ST=NY, C=US"

REM Генерация keystore
keytool -genkey -v ^
  -keystore "%keystore_name%" ^
  -storepass "%storepass%" ^
  -keypass "%keypass%" ^
  -alias "%alias_name%" ^
  -keyalg RSA ^
  -keysize 2048 ^
  -validity 10000 ^
  -dname "%dname%"

echo Keystore created: %keystore_name%
pause