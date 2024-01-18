import 'package:camera/camera.dart';
import 'package:example/main_app.dart';
import 'package:flutter/material.dart';

List<CameraDescription> _cameras = <CameraDescription>[];
Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    _cameras = await availableCameras();
  } on CameraException catch (e) {
    _logError(e.code, e.description);
  }
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const MainApp()));
}

/// mainName must be the same as the method name
@pragma('vm:entry-point')
void pipMain() {
  runApp(ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        home: const PiPMainApp()),
  ));
}

void _logError(String code, String? message) {
  // ignore: avoid_print
  print('Error: $code${message == null ? '' : '\nError Message: $message'}');
}
