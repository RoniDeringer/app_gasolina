// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/icon.png'),
              ),
              // ignore: prefer_const_constructors
              Container(
                height: 50,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 20.0, bottom: 10.0),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Email'),
                      ),
                      const SizedBox(height: 10),
                      // ignore: prefer_const_constructors
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password'),
                        obscureText: true,
                      ),
                      const SizedBox(height: 15),
                      RaisedButton(
                          textColor: Colors.white,
                          color: Colors.purple,
                          onPressed: () {
                            if (email == 'ronideringer' && password == '123' ||
                                email == 'duda' && password == '310103') {
                              Navigator.of(context).pushReplacementNamed(
                                  '/home'); // ou pushNamed
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      //Stack = Empilhamento, coloca um widget em cima de outro
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/images/background.jpg', fit: BoxFit.cover),
        ),
        Container(
          color: Colors.black.withOpacity(0.4),
        ),
        _body(),
      ],
    ));
  }
}
