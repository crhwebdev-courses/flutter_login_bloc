import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final Bloc bloc = Bloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  //context object carries the information about the widget and all enclosing widgets
  static Bloc of(BuildContext context) {
    //look up context tree untill reaching Provider widget, return it type cast as a Provider widget, and
    // then get the bloc object from that
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
