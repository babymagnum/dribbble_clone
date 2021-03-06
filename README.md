# flutter_template

This is flutter template, you can use it for mobile and web

# For web support

Follow these 2 website to make your current flutter project to support flutter web
1. https://medium.com/flutter-community/flutter-create-and-deploy-a-website-from-scratch-4a026ebd6c
2. https://flutter.dev/docs/get-started/web

# Getting Started

1. After clone the project, change the name of the folder
2. flutter channel master -> change to channel master to best support
3. flutter pub get -> get the packages defined in pubspec.yaml class
4. flutter clean -> clean the flutter project
5. Change app name from android manifest or ios build file

# Basic packages used

1. mobx for state management
2. get_it for dependency injection
3. http & dio for http request, http package use for optionally call request that doesnt support serialize with dio
4. flutter_html for support html tag (load http tag string)
5. flutter_masked_text for masked the textfield
6. shimmer for create shimmer loading like facebook
7. connectivity for check the device connection
8. shared_preferences for save local data
9. etc

# Networking schema

1. Create class for response model, example in success.dart
2. Register model class that we wrote before to base_service.dart so we can easily parse the json with class model (look at the fromJson method in base_service.dart) 
3. Create class service (example in user_service.dart) for call the http method writen in base_service.dart
4. Create method in user_service.dart for example you can look doLogin method, in there we pass success.dart class to the generics class to, which mean we want the result of the http request to that class model.
5. Call user_service.dart class anywhere you want to do http request, in the example we call it in base_stores.dart, because we use mobx for state management wen can place the http transaction in the stores class so it can be modular.

# Add new model(http response model) or stores(mobx class for event and state management)

1. Create model class, look example of success.dart
2. Create stores class, look example of base_stores.dart
3. run in terminal 'flutter pub run build_runner watch --delete-conflicting-outputs' -> remove the quote mark
4. .g.dart file will generated automatically after proccess in terminal done
