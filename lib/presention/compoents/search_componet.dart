import 'package:flutter/material.dart';

Widget defuletTextForm(
    {required controller,
    required labls,
    required icon,
    isShow = false,
    keyboardType,
    suffix}) {
  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    onChanged: (value) {
      print(value);
    },
    decoration: InputDecoration(
      icon: Icon(icon),
      label: Text("$labls"),
      border: const OutlineInputBorder(),
      suffix: suffix,
    ),
  );
}
    //#//  validator: validator,
  
