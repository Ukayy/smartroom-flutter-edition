import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: ScreenUtil().setHeight(40),
          left: ScreenUtil().setWidth(37),
          right: ScreenUtil().setWidth(37)),
      padding: EdgeInsets.fromLTRB(
          ScreenUtil().setWidth(5),
          ScreenUtil().setHeight(5),
          ScreenUtil().setWidth(5),
          ScreenUtil().setHeight(10)),
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "2020-01-01",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "18:00 AM",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(ScreenUtil().setWidth(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.w, 5.h, 2.w, 0.h),
                        child: Image.asset(
                          "asset/image/tmp_cold.png",
                          width: ScreenUtil().setWidth(35),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Temperature",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Text(
                              "20 \u2103",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.w),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: ScreenUtil().setWidth(1.5),
                  height: ScreenUtil().setHeight(30),
                  color: Colors.grey,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(2.w, 5.h, 5.h, 0.w),
                        child: Image.asset(
                          "asset/image/humidity.png",
                          width: ScreenUtil().setWidth(30),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Humidity",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Text(
                              "60 %",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AcWidget extends StatefulWidget {
  @override
  _AcWidgetState createState() => _AcWidgetState();
}

class _AcWidgetState extends State<AcWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(220),
      padding: EdgeInsets.all(20.w),
      margin: EdgeInsets.fromLTRB(20.w, 10.h, 5.w, 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)],
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Image.asset(
                "asset/image/snow.png",
                width: ScreenUtil().setWidth(30),
              ),
            ),
            Text(
              "AC",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RawMaterialButton(
                onPressed: () {},
                elevation: 3,
                fillColor: Colors.white,
                child: Icon(
                  Icons.power_settings_new,
                  size: 30.w,
                ),
                padding: EdgeInsets.all(45.w),
                shape: CircleBorder(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "ON",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              )
            ],
          ),
        )
      ]),
    );
  }
}

class LampWidget extends StatefulWidget {
  @override
  _LampWidgetState createState() => _LampWidgetState();
}

class _LampWidgetState extends State<LampWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      height: ScreenUtil().setHeight(220),
      margin: EdgeInsets.fromLTRB(10.w, 10.h, 20.w, 10.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black38)]),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Image.asset(
                "asset/image/idea.png",
                width: ScreenUtil().setWidth(30),
              ),
            ),
            Text(
              "Lamp",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.h, left: 10.w),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Lamp 1"),
                  SizedBox(
                      height: ScreenUtil().setHeight(30),
                      width: 80.w,
                      child: Switch(value: true, onChanged: (value) {}))
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Lamp 2"),
                  SizedBox(
                      height: ScreenUtil().setHeight(30),
                      width: 80.w,
                      child: Switch(value: true, onChanged: (value) {}))
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Lamp 3"),
                  SizedBox(
                      height: ScreenUtil().setHeight(30),
                      width: 80.w,
                      child: Switch(value: true, onChanged: (value) {}))
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Lamp 4"),
                  SizedBox(
                      height: ScreenUtil().setHeight(30),
                      width: 80.w,
                      child: Switch(value: true, onChanged: (value) {}))
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class DoorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(200),
      padding: EdgeInsets.all(10.w),
      margin: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black26)]),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Door",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(20.w),
          child: RawMaterialButton(
            onPressed: () {},
            elevation: 3,
            fillColor: Colors.white,
            child: Icon(
              Icons.vpn_key,
              size: 30.w,
            ),
            padding: EdgeInsets.all(40.w),
            shape: CircleBorder(),
          ),
        ),
        Text(
          "Open",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
        )
      ]),
    );
  }
}
