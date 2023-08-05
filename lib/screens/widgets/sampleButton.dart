import 'package:flutter/material.dart';

class sampleButton extends StatefulWidget {

  final String buttonText;
  final Color buttonBackgroundColor;

  const sampleButton({super.key, required this.buttonText, required this.buttonBackgroundColor});


  @override
  State<sampleButton> createState() => _sampleButtonState();
}

class _sampleButtonState extends State<sampleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: widget.buttonBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(12),
        child: Text(widget.buttonText.toString(), style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.w600),),
      ),
    );
  }
}
