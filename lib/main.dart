import 'package:dineinapp/cubit/page_cubit.dart';
import 'package:dineinapp/screens/pages/main_page.dart';
import 'package:dineinapp/screens/pages/onboarding_page.dart';
import 'package:dineinapp/screens/pages/signin_page.dart';
import 'package:dineinapp/screens/pages/signup_page.dart';
import 'package:dineinapp/screens/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'DineIn',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/onboarding': (context) => const OnboardingPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-in': (context) => const SignInPage(),
          '/main': (context) => const MainPage(),
        },
      ),
    );
  }
}
