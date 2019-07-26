import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:signin_learn/repositories/user_repository.dart';
import './bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final UserRepository userRepository;

  MainBloc({@required this.userRepository}) : assert(userRepository != null);

  @override
  MainState get initialState => InitialMainState();

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    // TODO: Add Logic
    if (event is AuthenticationCheckEvent) {
      final bool hasToken = await userRepository.hasToken();

      if (hasToken) {
        yield AuthorizedState();
      } else {
        yield UnAuthorizedState();
      }
    }
  }
}
