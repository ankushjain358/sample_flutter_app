# Sample Flutter App with GitHub Actions Pipeline
This is just a sample Flutter application designed for building GitHub action pipelines that generate the APK file.

This project has 2 pipelines:
1. Flutter Android Build (Development)
2. Flutter Android Build (Production)


## Flutter Android Build (Development)
- File located at `sample_flutter_app/.github/worflows/flutter_android_build_dev.yml`.
- No need to generate Private Key (Upload Key), and Key Store. 
- Signing is done with default debug signing keys.
- Flutter build works in Release mode because the file `sample_flutter_app/android/app/build.gradle` uses debug signing keys.

    ```
    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig signingConfigs.debug
        }
    }
    ```

## Flutter Android Build (Production)
- File located at `sample_flutter_app/.github/worflows/flutter_android_build_prod.yml`.
- Next, you need the following things:
    - Private Key - This will be used to sign APK
    - Public Certificate - This will be uploaded to Play Console to verify the signed APK on further updates.
- Run the below command which generates a Key Store that includes the following:
    - 2,048 bit RSA key pair (public-private keys)
    - Self-signed certificate (contains the public key)

    ```bash
    keytool -genkey -v -keystore C:\Users\[Your Username]\Desktop\key.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias key_alias
    ```
    > Important:
    > 1. A Key Store is a repository of security certificates and private keys. The new key store will only contain one key when the previous command is used. 
    > 2. You are free to choose different passwords for key store and the key that it stores inside it.
    > 3. `key_alias` in the above command belongs to your key inside the Key Store.
- Then follow this blog - [How to Safely Build Assigned Flutter App with GitHub Actions](https://blog.devgenius.io/how-to-safely-build-assigned-flutter-app-with-github-actions-8860b1b6eef6).

## References
- [Flutter: Build and Deploy Android apps using GitHub Actions](https://tbrgroup.software/flutter-build-and-deploy-android-apps-using-github-actions/)
- [Step-by-step guide to Android code signing and code signing with Codemagic](https://blog.codemagic.io/the-simple-guide-to-android-code-signing/)
- [Directory Structure reference](https://blog.logrocket.com/implementing-route-guards-flutter-web-apps/)
- [Go router implementation](https://blog.codemagic.io/flutter-go-router-guide/)
- [REDIRECT USER TO LOGIN FORM IF THE USER IS NOT LOGGED IN-FLUTTER](https://www.appsloveworld.com/flutter/200/168/redirect-user-to-login-form-if-the-user-is-not-logged-in?expand_article=1)
- [Flutter TextTheme Default Font Sizes](https://api.flutter.dev/flutter/material/TextTheme-class.html)
- [Take a picture using the camera](https://docs.flutter.dev/cookbook/plugins/picture-using-camera)