import 'dart:async';

class Bloc {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  // Getters for Adding data to stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  //Getters for Retrieving data from stream
  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passwordController.stream;
}
