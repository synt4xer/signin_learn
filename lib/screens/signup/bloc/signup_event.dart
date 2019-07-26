import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SignupEvent extends Equatable {
  SignupEvent([List props = const []]) : super(props);
}
