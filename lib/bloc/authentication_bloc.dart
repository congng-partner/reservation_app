import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthLoginEvent>(_onLoginEvent);
  }

  _onLoginEvent(AuthLoginEvent event, Emitter<AuthenticationState>emit)async {
    print('OKOKOK: ${event.phoneNumber} - ${event.password}');
    emit(AuthLoading());

    await Future.delayed(const Duration(seconds: 3));

    // Gọi API logic
    //code mẫu
    if(event.password == 'Cong@123'){
      emit(AuthLoginSuccess());
    }else{
      emit(AuthLoginFailure());
    }
  }
}
