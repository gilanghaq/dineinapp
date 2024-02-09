import 'package:dineinapp/screens/widgets/custombutton_widget.dart';
import 'package:dineinapp/screens/widgets/customtextfield_widget.dart';
import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsetsDirectional.only(top: 48),
        child: Column(
          children: [
            Text(
              'Masuk',
              style: blackText.copyWith(
                fontSize: 28,
                fontWeight: semibold,
              ),
            ),
            Text(
              'Masuk sekarang untuk memulai',
              style: blackText.copyWith(
                fontSize: 18,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextField(
          hint: 'Email',
        );
      }

      Widget passwordInput() {
        return CustomTextField(
          hint: 'Password',
          obscureText: true,
        );
      }

      Widget forgetPassword() {
        return Text(
          'Lupa Password?',
          style: primaryText.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
        );
      }

      Widget submitButton() {
        return CustomButton(
          margin: EdgeInsets.only(top: 24),
          title: 'Masuk',
          onPressed: () {},
        );
      }

      Widget signInWith() {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 52),
          child: Column(
            children: [
              Text(
                'Atau masuk dengan',
                style: blackText.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/ic_google.svg',
                    width: 52,
                    height: 52,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/ic_facebook.svg',
                    width: 52,
                    height: 52,
                  ),
                ],
              )
            ],
          ),
        );
      }

      Widget signUpButton() {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/sign-up');
          },
          child: Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum punya akun?',
                  style: blackText.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Masuk',
                  style: primaryText.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 52),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            emailInput(),
            passwordInput(),
            forgetPassword(),
            submitButton(),
            signInWith(),
            signUpButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            title(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
