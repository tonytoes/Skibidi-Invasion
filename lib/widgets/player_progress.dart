import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveProgress(int index) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('maxUnlockedIndex', index);
}

Future<int> loadProgress() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getInt('maxUnlockedIndex') ?? 0;
}
