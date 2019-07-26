import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc.dart';
import 'package:signin_learn/screens/signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  LoginBloc loginBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginBloc = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      bloc: loginBloc,
      child: Scaffold(
        appBar: PreferredSize(child: Container(), preferredSize: Size(0, 0)),
        backgroundColor: Colors.black54,
        body: Container(
          child: BlocBuilder(
            bloc: loginBloc,
            builder: (context, state) {
              if (state is InitialLoginState) {
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "WELCOME",
                          style: TextStyle(fontSize: 36, color: Colors.white),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: "E-mail",
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.black54,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orange[200]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orange[200]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15)),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 45),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.black54,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orange[200]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orange[200]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15)),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 45),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 25),
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange[200],
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            )
                          ],
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 45),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          GestureDetector(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.orange[200],
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpScreen()));
                            },
                          )
                        ],
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
