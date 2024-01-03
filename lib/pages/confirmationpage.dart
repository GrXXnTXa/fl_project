// ignore_for_file: use_key_in_widget_constructors

import 'package:fl_project/pages/newannouncement.dart';
import 'package:flutter/material.dart';
import 'package:fl_project/components/mybutton.dart';
import 'package:fl_project/components/mytext_view.dart';

class KodePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _KodePageState();
  }
}

class _KodePageState extends State<KodePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xF5F5F5F5),
        body: SafeArea(
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
                        'Введите код отправленный на номер\n+7 (888) 777-66-55',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFFBABABA),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 75),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MyTextView(
                        prefixText: "",
                        labelText: "Код из СМС",
                        inputType: TextInputType.number,
                        maxLenght: 6,
                      ),
                      TextButton(
                        onPressed: null,
                        style: TextButton.styleFrom(
                          minimumSize: const Size(5, 30),
                        ),
                        child: const Text(
                          'Получить код повторно',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
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
                                return NewAnnouncement();
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
    );
  }
}
