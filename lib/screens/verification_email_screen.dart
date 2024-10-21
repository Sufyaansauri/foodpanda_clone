import 'package:flutter/material.dart';
import 'package:foodpanda_app/screens/fillaccount_info_screen.dart';
import 'package:foodpanda_app/widgets/custom_text_button.dart';

class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() =>
      _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFF2B85),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Image.asset(
                      "assets/email_icon.png",
                      width: 80,
                    ),
                  ),
                  const Text(
                    "verify your email address to get started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "This help us too mitigate fraud and keep your perosnal data safe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: Colors.grey[200],
                ),
                CustomTextButton(
                  text: "Send verification email",
                  onPressed: () {
                     Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FillAccountInfoScreen(),
                        ),
                      );
                  },
                  isDisabled: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
