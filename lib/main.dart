import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:word_and_memory/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
        value: AuthService().user,
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Word and Memory',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
        ),
        home: PageRouter(),
      ),
    );
  }
}

class PageRouter extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null){
      return LoginPage();
    } else {
      return MainPage();
    }
  }

}
