import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/presentation/pages/details/details_page.dart';
import 'package:moteelz/presentation/pages/details_payment_steps/details_payment_steps.dart';
import 'package:moteelz/presentation/pages/payment/payment_page.dart';
import 'package:moteelz/presentation/pages/wallet/wallet_page.dart';
import 'core/di/injection.dart' as di;

void main() {
  // di.setupDependencies();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();

    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Moteelz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: AppColors.primary,
      ),
      home:  DetailsPaymentStepsScreen(),
    );
  }
}

