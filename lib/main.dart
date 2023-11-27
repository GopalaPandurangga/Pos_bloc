import 'package:pos_terpadu_bloc/core.dart';
import 'package:flutter/material.dart';


void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await DB.init();
  await AuthService().initUser(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: getDefaultTheme(),
      debugShowCheckedModeBanner: false,
      home: AuthService.currentUser != null
          ? const MainNavigationView()
          : const LoginView(),
    );
  }
}
