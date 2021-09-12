import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widget/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.4,
              color: AppColors.primary,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 80, 0, 16),
                  child: Image.asset(AppImages.person)
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: Image.asset(AppImages.logomini),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(64, 16, 58, 16),
                  child: Text(
                    'Organize seus boletos em um só lugar',
                    textAlign: TextAlign.center,
                    style: TextStyles.titleHome,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16
                  ),
                  child: SocialLoginButton(
                    onTap: () {
                      print('Clicked');
                    },
                  ),
                ),
              ]
            ),
          ],
        )
      ),
    );
  }
}
