import 'package:flutter/material.dart';

class TreatmentList extends StatelessWidget {
  final String treatmentName;
  final String iconPathImage;
  const TreatmentList(
      {super.key, required this.iconPathImage, required this.treatmentName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(
            color: Color(0xfff6f4ff), borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              iconPathImage,
              height: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              treatmentName,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
