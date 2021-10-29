import 'dart:async';


import 'package:flutter_bloc/flutter_bloc.dart';


import 'appTheme.dart';
import 'themeEvent.dart';
import 'themeState.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(themeData: appThemeData[AppTheme.LightTheme]!));

  @override
  Stream<ThemeState> mapEventToState(
      ThemeEvent event,
      ) async* {
    if (event is ThemeChanged) {
      yield ThemeState(themeData: appThemeData[event.theme]!);
    }
  }
}