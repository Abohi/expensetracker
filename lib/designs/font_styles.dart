import 'package:flutter/material.dart';

sofiaRegular({Color? fontColor,double? fontSize,FontWeight? fontWeight,TextDecoration? textDecoration,double?lineHeight}) =>  TextStyle(
    fontFamily: 'SofiaRegular',
    color: fontColor??Color(0xff575759),
    fontSize: fontSize??36,
    fontWeight: fontWeight??FontWeight.normal,
 decoration: textDecoration,
  height: lineHeight
);
