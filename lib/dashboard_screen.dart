

import 'package:dashboard/header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Container(color: Colors.pink,),
                      SizedBox(height: defaultPadding),
                      Container(color: Colors.blue,),
                      if (ResponsiveBreakpoints.of(context).isMobile)
                        SizedBox(height: defaultPadding),
                      if (ResponsiveBreakpoints.of(context).isMobile)
                        Container(color: Colors.black),
                      SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we don't want to show it
                if (!ResponsiveBreakpoints.of(context).isMobile)
                  Expanded(
                    flex: 2,
                    child: Container(color: Colors.blue),
                  ),
              ],
            ),),
          ],
        )],
      ),
    ));
  }
}
