/*
  Bloc pattern makes use of streams to communicate between a centeral class that
  maintanes state and widgets from wich state changes flow

  An instance of StreamController can:
   1. Add items to a stream via sink.add method
   2. Process a streams contents using stream.transform

  Two patterns of using bloc for state management in application

  1. Single Global Instance
   Instantiate bloc instance within this file. This give access to the one instance from any file that
   imports this file
  2. Scoped Instances
   Create bloc instance within any widget class that will use it.
   It will be aviable to the widget and any sub-widgets, but not anything outside of the widget
 */

import 'dart:async';
import 'validators.dart';

class Bloc with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // Getters for Adding data to stream
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  //Getters for Retrieving data from stream with a transform to select
  // which data gets retrieved.
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  //clean up variables or objects created by class -- essentially a destructor
  dispose() {
    _email.close();
    _password.close();
  }
}
