import 'package:ecommerce/modules/home/homepage.dart';
import 'package:ecommerce/modules/login/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'modules/login/login.dart';
import 'modules/login/profile.dart';
import 'modules/login/register.dart';
import 'modules/splash/splashpage.dart';
import 'shared/utils/grid_manager.dart';
import 'shared/utils/product_details.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: GridManager(),
        ),
        ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Eccomerce',
        theme: ThemeData(
          primaryColor: const Color(0xFF0B08AC),
        ),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => const SplashPage(),
          "/login": (context) => const LoginPage(),
          "/register": (context) => const Register(),
          "/home": (context) => const HomePage(),
          "/det_product": (context) => const ProductDetails(),
          "/profile": (context) => const Profile(),
        },
      ),
    );
  }
}
