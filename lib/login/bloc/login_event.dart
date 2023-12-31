part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class Login extends LoginEvent {
  final String email;
  final String password;

  const Login(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class LoginWithGoogle extends LoginEvent {
  const LoginWithGoogle();

  @override
  List<Object> get props => [];
}

class VerifyToken extends LoginEvent{
  const VerifyToken();

  @override
  List<Object> get props => [];

}
