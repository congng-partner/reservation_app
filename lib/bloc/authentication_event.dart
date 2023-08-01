part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {}

class AuthLoginEvent extends AuthenticationEvent {
  final String phoneNumber;
  final String password;

  AuthLoginEvent({required this.phoneNumber, required this.password});
}
