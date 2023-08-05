import 'package:flutter/material.dart';

class SampleInputField extends StatefulWidget {

  final TextEditingController controller;
  final String fieldName;
  final String hintText;
  final IconData? iconData;

  const SampleInputField({super.key, required this.controller, required this.fieldName, required this.hintText, this.iconData});

  @override
  State<SampleInputField> createState() => _SampleInputFieldState();
}

class _SampleInputFieldState extends State<SampleInputField> {

  static const Color containerColor = Color(0xffF5F8FB);
  static const Color textBlack = Color(0xff232323);
  static const Color textLightBlack = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffFF7511);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.fieldName.toString(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: textBlack),),
        SizedBox(
          height: 4,
        ),
        TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: widget.hintText.toString(),
            hintStyle: TextStyle(fontSize: 13, color: textLightBlack),
            filled: true,
            fillColor: containerColor,
            suffixIcon: widget.iconData != null ? Icon(widget.iconData, size: 22) : Text(""),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 0, color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 0, color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 0, color: Colors.transparent),
            ),
          ),

          onFieldSubmitted: (value){
            if(value.isEmpty){
              widget.controller.text = "0.00";
            }
          },


        ),

      ],
    );
  }
}
