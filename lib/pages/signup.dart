// ignore_for_file: use_key_in_widget_constructors

import 'package:fl_project/pages/confirmationpage.dart';
import 'package:flutter/material.dart';
import 'package:fl_project/components/mybutton.dart';
import 'package:fl_project/components/mytext_view.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xF5F5F5F5),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    const Column(
                      children: [
                        SizedBox(height: 145),
                        Text(
                          'Авторизация',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 17),
                        Text(
                          'Введите номер телефона для авторизации',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFFBABABA),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 75),
                    const Column(
                      children: [
                        MyTextView(
                          prefixText: "+7",
                          labelText: "Номер телефона",
                          inputType: TextInputType.number,
                          maxLenght: 10,
                        ),
                        SizedBox(height: 20),
                        MyTextView(
                          prefixText: "",
                          labelText: "Введите ваше имя",
                          inputType: TextInputType.text,
                          maxLenght: 100,
                        ),
                      ],
                    ),
                    const SizedBox(height: 38),
                    Column(
                      children: [
                        MyButton(
                          height: 50,
                          width: double.infinity,
                          text: 'Продолжить',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return KodePage();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
