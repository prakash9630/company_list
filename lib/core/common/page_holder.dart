import 'package:flutter/material.dart';

class PageHolder extends StatelessWidget {
  const PageHolder({super.key,required this.child,required this.appTitle,this.appBarColor,this.textColor});
 final String appTitle;
 final Color? appBarColor;
 final Widget child;
 final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appTitle,style: TextStyle(color:textColor ),),backgroundColor: appBarColor,), body: child ,
    );
  }
}
