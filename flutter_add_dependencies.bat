@ECHO OFF
ECHO checking pubspec.yaml file ...
SET F="pubspec.yaml"
IF EXIST %F% (
  ECHO %F% is exist
  ECHO adding several dependencies ...
  flutter pub add auto_route bloc dio dio_smart_retry either_dart envied  flutter_bloc flutter_secure_storage json_annotation logger path path_provider intl pull_to_refresh_flutter3 test
  ECHO adding several dev dependencies ...
  flutter pub add auto_route_generator build_runner envied_generator json_serializable flutter_launcher_icons change_app_package_name -d
  ECHO complete adding all dependecies
  flutter pub get
  PAUSE
) ELSE (
  ECHO %F% is not found
  ECHO move this file to flutter project then run the file ..
  PAUSE
)
