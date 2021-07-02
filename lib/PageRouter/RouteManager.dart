import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/Poll.dart';
import 'package:flutter_application_1/pages/HomeScreen.dart';
import 'package:flutter_application_1/pages/PollFormDisplay.dart';
import 'package:flutter_application_1/pages/ViewPoll.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case '/pollform':
        if (args is String) {
          return MaterialPageRoute(
              builder: (context) => PollformDisplay(data: args));
        }

        return errorPage();
      case '/viewpoll':
        if (args is Poll) {
          return MaterialPageRoute(
              builder: (context) => ViewPoll(
                    poll: args,
                  ));
        }
        return errorPage();
      default:
        return errorPage();
    }
  }

  static Route errorPage() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text('Error'),
              ),
              body: Center(
                child: Text('This is an error page'),
              ),
            ));
  }
}
