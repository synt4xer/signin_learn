import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc.dart';
import 'package:signin_learn/screens/login/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignUpScreenState();
  }
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignupBloc signUpBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    signUpBloc = SignupBloc();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      bloc: signUpBloc,
      child: Scaffold(
        appBar: PreferredSize(child: Container(), preferredSize: Size(0, 0)),
        backgroundColor: Colors.black54,
        body: Container(
          child: BlocBuilder(
              bloc: signUpBloc,
              builder: (context, state) {
                if (state is InitialSignupState) {
                  return SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(fontSize: 36, color: Colors.white),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 10),
                        ),
                        SizedBox(height: 50,),
                        Container(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: "E-mail",
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.black54,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange[200]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange[200]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15)
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 45),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.black54,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange[200]),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange[200]),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15)
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 45),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                labelText: "Phone",
                                labelStyle: TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.black54,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange[200]),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange[200]),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15)
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 45),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 25
                                    ),
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.orange[200],
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 45),
                        ),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.white),
                            ),
                            GestureDetector(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.orange[200],
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }
              }),
        ),
      ),
    );
  }
}