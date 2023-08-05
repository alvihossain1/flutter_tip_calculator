import 'package:class_2/screens/widgets/SampleInputField.dart';
import 'package:class_2/screens/widgets/sampleButton.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  final formKey = GlobalKey<FormState>();

  final totalBillController = TextEditingController();
  final totalTipController = TextEditingController();
  final totalPeopleController = TextEditingController();

  static const Color containerColor = Color(0xffF5F8FB);
  static const Color textBlack = Color(0xff232323);
  static const Color textLightBlack = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffFF7511);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tip Calculator", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
        elevation: 5,
        shadowColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///FIRST CONTAINER
            Container(
              width: double.infinity,
              color: containerColor,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text("Total Bill", style: TextStyle(fontSize: 15, color: textLightBlack),),
                  Text("\$ ${totalBillController.text}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: textBlack)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Persons", style: TextStyle(fontSize: 12, color: textLightBlack),),
                      Text("Tip Amount", style: TextStyle(fontSize: 12, color: textLightBlack),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("05", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: textBlack),),
                      Text("\$ 20.0", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600, color: textBlack),),
                    ],
                  ),
                ],
              ),

            ),
            ///Second Container
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: containerColor,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Amount Per Person", style: TextStyle(fontSize: 12, color: textLightBlack),),
                  Text("\$ 00.0", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600, color: textBlack),),
                ],
              ),
            ),
            ///Spacer
            Spacer(),
            SampleInputField(
              controller: totalBillController,
              fieldName: "Total Bill",
              hintText: "Please enter total bill",
              iconData: Icons.attach_money,
            ),
            SampleInputField(
              controller: totalTipController,
              fieldName: "Tip Percentage",
              hintText: "Please enter tip percentage",
              iconData: Icons.percent,
            ),
            SampleInputField(
              controller: totalPeopleController,
              fieldName: "Numer of people",
              hintText: "Please enter number of peolpe",
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                sampleButton(buttonText: "Calculate", buttonBackgroundColor: Colors.black),
                sampleButton(buttonText: "Clear", buttonBackgroundColor: clearButtonColor),
              ],
            )

          ],
        ),
      ),
    );
  }
}





// Text("Total Bill", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: textBlack),),
// SizedBox(
//   height: 4,
// ),
// TextFormField(
//   controller: totalBillController,
//   keyboardType: TextInputType.number,
//   decoration: InputDecoration(
//     hintText: "Please Enter total bill",
//     hintStyle: TextStyle(fontSize: 13, color: textLightBlack),
//     filled: true,
//     fillColor: containerColor,
//     suffixIcon: Icon(Icons.attach_money, size: 22),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(10),
//       borderSide: BorderSide(width: 0, color: Colors.transparent),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(10),
//       borderSide: BorderSide(width: 0, color: Colors.transparent),
//     ),
//   ),
//
//   onFieldSubmitted: (value){
//     if(value.isEmpty){
//       totalBillController.text = "0.00";
//     }
//   },
//
//
// ),