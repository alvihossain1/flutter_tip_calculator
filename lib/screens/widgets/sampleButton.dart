import 'package:flutter/material.dart';

class sampleButton extends StatefulWidget {

  final String buttonText;
  final Color buttonBackgroundColor;
  final GlobalKey<FormState> formKey;

  const sampleButton({super.key, required this.buttonText, required this.buttonBackgroundColor, required this.formKey});


  @override
  State<sampleButton> createState() => _sampleButtonState();
}

class _sampleButtonState extends State<sampleButton> {

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.formKey.currentState!.validate();
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: widget.buttonBackgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(0.0, 0.5), //(x,y)
              blurRadius: 3.0,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
        child: Text(widget.buttonText.toString(), style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.w500),),
      ),
    );
  }
}
