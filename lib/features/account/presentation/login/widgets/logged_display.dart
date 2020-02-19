import 'package:dynamic_dart_fields/features/account/data/models/views/_views.dart';
import 'package:flutter/material.dart';

class LoggedDisplay extends StatelessWidget {
  final UserViewModel user;

  const LoggedDisplay({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      child: Column(
        children: <Widget>[
          Text(
            user.userName,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Text(
                  user.userName,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
