import "package:shared_preferences/shared_preferences.dart";

class StorageService {
  Future<SharedPreferences> getInstance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  getValue(String key) {}

  setValue(String key, dynamic value) {}
}
