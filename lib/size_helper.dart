import 'package:flutter/material.dart';

Size debugSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double debugWidth(context) {
  Size w = debugSize(context);
  return w.width;
}

double debugHeight(context) {
  Size h = debugSize(context);
  return h.height;
}
