import 'package:dineinapp/screens/widgets/custombutton_widget.dart';
import 'package:dineinapp/screens/widgets/customtextfield_widget.dart';
import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsetsDirectional.only(top: 48),
        child: Column(
          children: [
            Text(
              'Daftar',
              style: blackText.copyWith(
                fontSize: 28,
                fontWeight: semibold,
              ),
            ),
            Text(
              'Daftar sekarang untuk memulai',
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
      Widget nameInput() {
        return CustomTextField(
          hint: 'Full Name',
        );
      }

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
          title: 'Daftar',
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
        );
      }

      Widget signUpWith() {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 52),
          child: Column(
            children: [
              Text(
                'Atau daftar dengan',
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

      Widget signInButton() {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/sign-in');
          },
          child: Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun?',
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
            nameInput(),
            emailInput(),
            passwordInput(),
            forgetPassword(),
            submitButton(),
            signUpWith(),
            signInButton(),
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
