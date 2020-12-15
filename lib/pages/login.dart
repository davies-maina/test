import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilar/LoginApi.dart';
import 'package:pilar/pages/firstpage.dart';
import 'package:pilar/widgets/progress.dart';

import '../constants.dart';

import '../svg.dart';
import '../widgets/ReusableGraphical.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool loading = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: loading
          ? circularProgress()
          : ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 60),
                  color: kMainBgColor,
                  child: Column(
                    children: [
                      Text(
                        'Logo',
                        style: TextStyle(color: kTitleColor, fontSize: 40),
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: kTitleColor, width: 0.0),
                                    ),
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        fontSize: 14.0, color: kTitleColor),
                                    hintStyle: TextStyle(
                                        color: kTitleColor, fontSize: 10.0)),
                                controller: emailController,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Email cannot be empty';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                obscureText: true,
                                decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: kTitleColor, width: 0.0),
                                    ),
                                    labelText: 'password',
                                    labelStyle: TextStyle(
                                        fontSize: 14.0, color: kTitleColor),
                                    hintStyle: TextStyle(
                                        color: kTitleColor, fontSize: 10.0)),
                                controller: passwordController,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Password cannot be empty';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 1.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RaisedButton(
                                    color: Colors.transparent,
                                    textColor: kTitleColor,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: kTitleColor)),
                                    child: Text(
                                      'Iniciar sesión',
                                      style: TextStyle(color: kTitleColor),
                                    ),
                                    onPressed: () async {
                                      if (_formkey.currentState.validate()) {
                                        var email = emailController.text;
                                        var password = passwordController.text;
                                        setState(() {
                                          loading = true;
                                        });
                                        var res =
                                            await loginUser(email, password);
                                        if (res == null) {
                                          setState(() {
                                            loading = false;
                                            showSnackBar(context);
                                          });
                                        } else {
                                          setState(() {
                                            loading = false;
                                          });
                                          Navigator.of(context).pushReplacement(
                                              new MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          FirstPage()));
                                        }
                                      }
                                    },
                                  ),
                                  RaisedButton(
                                    color: kTitleBgColor,
                                    textColor: kTitleColor,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: kTitleColor)),
                                    child: Text(
                                      'Registrarse',
                                      style: TextStyle(color: kTitleColor),
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  graphicalPart('Icon 1', boxSvg, null),
                                  graphicalPart('Icon 2', boxSvg, null),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  void showSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Wrong credentials. Please try again'),
    ));
  }
}
