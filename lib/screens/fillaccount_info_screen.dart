import 'package:flutter/material.dart';
import 'package:foodpanda_app/screens/home_screen.dart';
import 'package:foodpanda_app/widgets/custom_text_button.dart';
import 'package:foodpanda_app/widgets/custom_text_field.dart';

class FillAccountInfoScreen extends StatefulWidget {
  const FillAccountInfoScreen({super.key});

  @override
  State<FillAccountInfoScreen> createState() => _FillAccountInfoScreenState();
}

class _FillAccountInfoScreenState extends State<FillAccountInfoScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String passText = "";
  String lastNameText = "";
  String firstNameText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFF2B85),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "continue",
              style: TextStyle(
                color: firstNameText.isEmpty ||
                        lastNameText.isEmpty ||
                        passText.isEmpty
                    ? Colors.grey[400]
                    : const Color(0xFFFF2B85),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      bottom: 20,
                    ),
                    child: Image.asset(
                      "assets/profile_icon.png",
                      width: 60,
                    ),
                  ),
                  const Text(
                    "Let's get you started!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "First, let's create your foodpanda account",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 15,
                        padding: const EdgeInsets.only(
                          right: 7,
                        ),
                        child: CustomTextField(
                          labelText: "First Name",
                          controller: firstNameController,
                          onChanged: (value) {
                            setState(() {
                              firstNameText = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 15,
                        padding: const EdgeInsets.only(
                          right: 7,
                        ),
                        child: CustomTextField(
                          labelText: "Last Name",
                          controller: lastNameController,
                          onChanged: (value) {
                            setState(() {
                              lastNameText = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    labelText: "Password",
                    controller: passController,
                    noIcon: false,
                    onChanged: (value) {
                      setState(() {
                        passText = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Divider(
                    height: 40,
                    color: Colors.grey[200],
                  ),
                  CustomTextButton(
                    text: "Continue",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    isDisabled: firstNameText.isEmpty ||
                        lastNameText.isEmpty ||
                        passText.isEmpty,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
