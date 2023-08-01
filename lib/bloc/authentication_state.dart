part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class AuthLoading extends AuthenticationState{}

class AuthLoginSuccess extends AuthenticationState{}

class AuthLoginFailure extends AuthenticationState{}