import 'package:bloc/bloc.dart';

import 'package:bloc/bloc.dart';

class MyyBlocObsever extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    // follow the event
    super.onEvent(bloc, event);
  }

  @override
  // follow the error
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  // follow change of screen
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }
}
