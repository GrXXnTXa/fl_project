// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_unnecessary_containers
// ignore_for_file: use_key_in_widget_constructors

import 'package:fl_project/pages/newannouncement.dart';
import 'package:flutter/material.dart';
import 'package:fl_project/components/mybutton.dart';
import 'package:fl_project/components/mytext_view.dart';
import 'package:fl_project/components/mytimelinetile.dart';

class MyAds extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAdsState();
  }
}

class _MyAdsState extends State<MyAds> {
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
                    Text(
                      'Мои объявления',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 21,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFffffff),
                      ),
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 30),
                      width: 359,
                      height: 346,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Груз',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFFBBBBBB),
                                    ),
                                  ),
                                  Text(
                                    '600 ₽',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              MyButton(
                                text: 'Повезу',
                                color: Colors.grey.shade200,
                                height: 34,
                                width: 75,
                                fontWeight: FontWeight.w500,
                                fontsize: 12,
                                borderradius: 50,
                                textcolor: Colors.grey,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          MyTimeLineTile(
                            isFirst: true,
                            isPast: true,
                            isLast: false,
                            iconData: Icons.adjust,
                            eventCard: Row(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Россия, Москва',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      '12:00, 6 декабря',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xFFBBBBBB),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          MyTimeLineTile(
                            isFirst: false,
                            isPast: false,
                            isLast: true,
                            iconData: Icons.location_on,
                            eventCard: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Россия, Москва',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '12:00, 6 декабря',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xFFBBBBBB),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Описание:orem ipsum dolor sit amet, consectetuer \nadipiscing elit. Aenean commodo ligula eget dolor...',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xFFBBBBBB),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          MyButton(
                            text: '✎  Изменить',
                            color: Color(0xFFcfcfe5),
                            height: 45,
                            width: double.infinity,
                            borderradius: 50,
                            textcolor: Color(0xFF3A59A8),
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
                    ),
                    SizedBox(height: 238),
                    MyButton(
                      text: '＋ Разместить объявление',
                      fontWeight: FontWeight.w600,
                      fontsize: 16,
                      color: Color(0xFF3A59A8),
                      height: 52,
                      width: double.infinity,
                      textcolor: Color(0xFFcfcfe5),
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
