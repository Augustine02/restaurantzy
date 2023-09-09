import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
    final String title;
    final Color color;
    final Color? fontColor;
    void Function()? onPress;
    ReusableButton({required this.title, required this.color, this.fontColor, this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
            padding: MaterialStateProperty.all(EdgeInsets.only(left: 40, right: 40))
        ),
        onPressed: onPress,
        child: Text(title, style:TextStyle(color: fontColor, fontSize: 20, fontWeight: FontWeight.bold),));
  }
}