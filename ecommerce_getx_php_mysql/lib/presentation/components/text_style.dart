import 'package:flutter/material.dart';

//- title - body - display
class Txt {
  static Text title(
    String text, {
    Color? color,
    double size = 20,
    TextOverflow overFlow = TextOverflow.ellipsis,
  }) {
    return Text(
      text,
      // max lines is essential so the overFlow proberity works
      maxLines: 1,
      style: TextStyle(
        fontSize: size,
        overflow: overFlow,
        color: color,
        fontFamily: 'CairoPlay',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static Text body(
    String text, {
    Color? color,
    double size = 20,
    TextOverflow overFlow = TextOverflow.ellipsis,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        overflow: overFlow,
        color: color,
        fontFamily: 'CairoPlay',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static Text display(
    String text, {
    Color color = const Color.fromARGB(255, 99, 98, 98),
    double size = 12,
    TextOverflow? overFlow,
    double height = 1.2,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        overflow: overFlow,
        color: color,
        fontFamily: 'CairoPlay',
        height: height,
      ),
    );
  }
}
