import 'package:flutter/material.dart';

import 'body.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      title: 'Flutter Demo',
      home: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 8, 25, 46),
          appBar: extractedAppBar(),
          body: const AppBody(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            elevation: 10,
            foregroundColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 21, 39, 82),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  AppBar extractedAppBar() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: const Text(
        "Note.ly",
        style: TextStyle(
          fontFamily: 'Aleo',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          letterSpacing: 2.8,
        ),
      ),
      leading: const Padding(
        padding: EdgeInsets.all(5.0),
        child: CircleAvatar(
          backgroundColor: Color.fromARGB(200, 8, 2, 46),
          child: Icon(
            Icons.person_sharp,
            color: Colors.white,
            // size: 15,
          ),
        ),
      ),
      //TODO: Change notification Icon if active
      actions: const [
        Icon(Icons.notifications_none),
      ],
    );
  }
}

final customTheme = ThemeData(
  primaryColor: const Color.fromARGB(97, 8, 25, 46),
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(primary: const Color.fromARGB(255, 8, 25, 46)),
  fontFamily: 'Pfd',
);
