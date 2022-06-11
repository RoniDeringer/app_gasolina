// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_page.dart';

class NaoAbra extends StatelessWidget {
  const NaoAbra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aba da lindeza'),
        actions: [
          CustomSwitch(),
        ],
        shadowColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'Coisa linda ein!',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Apple',
                      ),
                    ),
                    ListTile(
                        subtitle: Text(
                      '😜 😜 😜 - ',
                      textDirection: TextDirection.rtl,
                    )),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                    ),
                    Image.asset('assets/images/naoabra.jpg'),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              TextButton(
                  child: Text("Back".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepPurple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepPurple)))),
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed('/home')),
            ],
          ),
        ],
      ),
    );
  }
}
