# approachable_geek_challenge

As part of Approachable Geek's coding challenge, I must implement this UI wireframe:

https://xd.adobe.com/view/58778ee1-0bc4-40d9-55fb-cea5b22ab1c8-2e46/

_Data does not need to be saved to a database, but the application should appear to function as expected until refresh/restarted._



# Demo
https://youtube.com/shorts/lPNYThfVPrE?feature=share

<img src="https://user-images.githubusercontent.com/54586837/192071526-ec5b4981-0eac-45ba-9540-21f23e3708fb.png" alt="edit-profile" width="200"/> <img src="https://user-images.githubusercontent.com/54586837/192071528-d408ed36-acf7-4537-8b11-1a40849a8794.png" alt="edit-profile" width="200"/> 

# Installation

If you're new to Flutter the first thing you'll need is to follow the [setup instructions](https://flutter.dev/docs/get-started/install).

Once Flutter is setup, you can use the latest `stable` channel:
 * `flutter channel stable`
 * `flutter upgrade`
 
 To ensure that all dependencies are installed make sure to run this:
  * `flutter pub get`
  * `flutter gen-l10n`

 Once on `stable` you're ready to run the app on your local device or simulator:
 * `flutter run -d ios`
 * `flutter run -d android`
 
 ## Packages used
- [`riverpod` and `flutter_riverpod`](https://riverpod.dev/) : Used for the sake of state management, simply used to handle state for the account info, specifically used the StateNotifierProvider for immutability
- [`go_router`](https://pub.dev/packages/go_router): My go-to app routing navigation, since it includes Navigator 2.0 features
- [`mask_text_input_formatter`](https://pub.dev/packages/mask_text_input_formatter): Used for the text formatting of the phone number ex. `### ###-####`

## In addition:
- Included simple widget testing of all the pages and an example of mocking out providers for riverpod state holders [(here)](https://github.com/luggy-wuggy/approachable_geek_challenge/blob/main/test/ui/edit_profile/edit_profile_view_test.dart)
     - To run test: `flutter test`
- Included app localization just in case we want Spanish :))
