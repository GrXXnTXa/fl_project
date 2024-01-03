// ignore_for_file: file_names
// ignore_for_file: use_key_in_widget_constructors

import 'package:fl_project/pages/myads.dart';
import 'package:flutter/material.dart';
import 'package:fl_project/components/mybutton.dart';
import 'package:fl_project/components/mytext_view.dart';

class NewAnnouncement extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewAnnouncementState();
  }
}

class _NewAnnouncementState extends State<NewAnnouncement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xF5F5F5F5),
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: const Color(0xF5F5F5F5),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: const <Widget>[
            TextButton(
              onPressed: null,
              child: Text(
                'Сохранить и выйти',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Новое объявление',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Название объявления',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        MyTextView(
                          prefixText: "",
                          labelText: "Введите название",
                          inputType: TextInputType.text,
                          maxLenght: 10,
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Описание',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        MyTextView(
                          prefixText: "",
                          labelText: "Введите описание",
                          inputType: TextInputType.text,
                          maxLenght: null,
                          maxLines: 2,
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Откуда',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        MyTextView(
                          prefixText: "",
                          labelText: "Страна, Город, Аэропорт",
                          inputType: TextInputType.text,
                          maxLenght: 10,
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Куда',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        MyTextView(
                          prefixText: "",
                          labelText: "Страна, Город, Аэропорт",
                          inputType: TextInputType.text,
                          maxLenght: 100,
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Дата отъезда',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        MyTextView(
                          prefixIcon: Icon(Icons.calendar_today),
                          prefixText: "",
                          labelText: "дд/мм/гггг",
                          inputType: TextInputType.datetime,
                          maxLenght: 100,
                          suffixIcon: Icon(Icons.arrow_drop_down),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Дата приезда',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        MyTextView(
                          prefixIcon: Icon(Icons.calendar_today),
                          prefixText: "",
                          labelText: "дд/мм/гггг",
                          inputType: TextInputType.datetime,
                          maxLenght: 100,
                          suffixIcon: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Column(
                      children: [
                        MyButton(
                          // color: Colors.red,
                          height: 50,
                          width: double.infinity,
                          text: 'Разместить объявление',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MyAds();
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
