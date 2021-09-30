import 'package:flutter/material.dart';

Future<DropdownButton> attrDropdown(String defValue, List valueList) async {
  return DropdownButton(
    isExpanded: true,
    hint: Text(
      'Select your dog\'s breed',
      textAlign: TextAlign.center,
    ),
    value: defValue,
    onChanged: (value) {
      // setState(() {
      //   dogBreed = value;
      // });
    },
    items: valueList.map((value) {
      return DropdownMenuItem(
        value: value,
        child: Text(
          ' ',
        ),
      );
    }).toList(),
  );
}
