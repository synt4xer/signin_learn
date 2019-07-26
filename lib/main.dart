import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_bloc/bloc.dart';
import 'repositories/user_repository.dart';
import 'screens/splashscreen/splash_screen.dart';
import 'screens/login/login_screen.dart';

void main() => runApp(MyApp(userRepository: UserRepository()));

class MyApp extends StatefulWidget {
  final UserRepository userRepository;

  MyApp({Key key, @required this.userRepository}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  MainBloc mainBloc;
  UserRepository get _userRepository => widget.userRepository;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainBloc = MainBloc(userRepository: _userRepository);
    mainBloc.dispatch(AuthenticationCheckEvent());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      bloc: mainBloc,
      child: MaterialApp(
        home: BlocBuilder(
          bloc: mainBloc,
          builder: (BuildContext context, state) {
            if (state is InitialMainState) {
              return SplashScreen();
            } else if (state is AuthorizedState) {
              return Container();
            } else {
              return LoginScreen();
            }
          },
        ),
      ),
    );
  }
}
