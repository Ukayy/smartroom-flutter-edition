import 'package:flutter/material.dart';
import 'package:smart_room/login.dart';
import 'package:smart_room/power.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainWIdget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainWIdget extends StatelessWidget {
  const MainWIdget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    ScreenUtil.init(context, height: 683.4, width: 411.4);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(currentIndex: 1, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart), title: Text("Chart")),
        BottomNavigationBarItem(
            icon: Icon(Icons.power_settings_new), title: Text("Power")),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), title: Text("Account"))
      ]),
      body: SafeArea(
        child: LoginWidget(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          StatusWidget(),
          Padding(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
            child: Text(
              "Control",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 1, child: AcWidget()),
              Expanded(flex: 1, child: LampWidget()),
            ],
          ),
          DoorWidget(),
        ],
      ),
    );
  }
}
