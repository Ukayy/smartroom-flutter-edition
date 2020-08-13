import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset("asset/image/logo aja.png"),
          Row(
            children: <Widget>[
              Text("Username"),
              SizedBox(
                width: 100,
                child: TextField(
                  controller: TextEditingController(),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("Password"),
              SizedBox(
                width: 100,
                child: TextField(
                  controller: TextEditingController(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
