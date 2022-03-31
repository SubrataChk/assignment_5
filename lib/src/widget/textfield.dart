import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustonTextFormField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final FormFieldValidator validator;

  const CustonTextFormField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.validator,
      required this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
      child: TextFormField(
        controller: controller,
        validator: validator,
        style: TextStyle(fontSize: 15.sp),
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(prefixIcon),
            contentPadding: EdgeInsets.all(15),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.black)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.black)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }
}
