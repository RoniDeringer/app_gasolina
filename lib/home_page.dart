// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  // precisa de um estado
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  //estado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/avatar.jpg'),
                ),
                accountName: Text('GiHub:'),
                accountEmail: Text('RoniDeringer')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Voltar ao menu'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('Login'),
              subtitle: Text('Fazer Logout'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            Divider(
              height: 20,
              color: Color.fromARGB(255, 65, 63, 63),
            ),
            ListTile(
              leading: Icon(Icons.not_interested),
              iconColor: Color.fromARGB(199, 134, 3, 3),
              title: Text('CUIDADO!'),
              subtitle: Text('Não abra!'),
              onTap: () {
                Navigator.of(context).pushNamed('/naoAbra');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Gasolina'),
        actions: [
          CustomSwitch(),
        ],
        shadowColor: Color.fromARGB(255, 0, 0, 0),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Janeiro'),
                          subtitle: Text('245,90'),
                          leading: Icon(Icons.keyboard_arrow_right_rounded),
                          trailing: Text('12:10'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Fevereiro'),
                          subtitle: Text('550,00'),
                          leading: Icon(Icons.keyboard_arrow_right_rounded),
                          trailing: Text('19:20'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Março'),
                          subtitle: Text('190,99'),
                          leading: Icon(Icons.keyboard_arrow_right_rounded),
                          trailing: Text('08:00'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Abril'),
                          subtitle: Text('549,21'),
                          leading: Icon(Icons.keyboard_arrow_right_rounded),
                          trailing: Text('22:50'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Maio'),
                          subtitle: Text('340,25'),
                          leading: Icon(Icons.keyboard_arrow_right_rounded),
                          trailing: Text('16:15'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Junho'),
                          subtitle: Text('241,56'),
                          leading: Icon(Icons.keyboard_arrow_right_rounded),
                          trailing: Text('09:50'),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Julho'),
                          subtitle: Text('156,92'),
                          leading: Icon(Icons.keyboard_arrow_right_rounded),
                          trailing: Text('23:30'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instace.isDartTheme,
      onChanged: (value) {
        AppController.instace.changeTheme();
      },
    );
  }
}

class ListRows extends StatelessWidget {
  const ListRows({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              ListTile(
                title: Text('Janeiro'),
                focusColor: Color.fromARGB(255, 253, 6, 6),
                subtitle: Text('19,90'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
