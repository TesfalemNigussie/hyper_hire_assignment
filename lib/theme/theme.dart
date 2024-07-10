import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF3E3DC5);
const Color scaffoldColor = Color(0xFFEEEEEE);
const Color textColor = Colors.black;
const Color demiGray = Color(0xFF868686);
const liteGray = Color(0xFFF0F0F0);
const Color basicBlack = Color(0xFF1D1D1D);
const Color ratingYellowColor = Color(0xFFFFD233);

fontRegular(int fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      color: color ?? textColor,
      fontWeight: FontWeight.w400,
    );

fontThin(int fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      color: color ?? textColor,
      fontWeight: FontWeight.w100,
    );

fontExtraLight(int fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      color: color ?? textColor,
      fontWeight: FontWeight.w200,
    );

fontLight(int fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      color: color ?? textColor,
      fontWeight: FontWeight.w300,
    );

fontMedium(int fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      color: color ?? textColor,
      fontWeight: FontWeight.w500,
    );

fontSemiBold(int fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      color: color ?? textColor,
      fontWeight: FontWeight.w600,
    );

fontBold(int fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      color: color ?? textColor,
      fontWeight: FontWeight.w700,
    );

fontExtraBold(int fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      color: color ?? textColor,
      fontWeight: FontWeight.w800,
    );

fontExtraBlack(int fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      color: color ?? textColor,
      fontWeight: FontWeight.w900,
    );
