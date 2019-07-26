import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SignupState extends Equatable {
  SignupState([List props = const []]) : super(props);
}

class InitialSignupState extends SignupState {}
