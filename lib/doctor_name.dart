import 'package:flutter/material.dart';
class DoctorNameList extends StatelessWidget {
  final String doctorName;
  final String doctorCategory;
  final String doctorImagePath;
  const DoctorNameList({super.key,required this.doctorName,required this.doctorCategory,required this.doctorImagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 170,
        decoration: BoxDecoration(color: Color(0xfff6f4ff),borderRadius:BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset(doctorImagePath)),
            SizedBox(height: 15,),
            Text(doctorName,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text(doctorCategory,style: TextStyle(fontSize: 16,color: Colors.grey[500]),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star,color: Colors.yellow[700],),Icon(Icons.star,color: Colors.yellow[700],),Icon(Icons.star,color: Colors.yellow[700],),Icon(Icons.star_half,color: Colors.yellow[700],)
              ],
            )
          ],
        ),
      ),
    );
  }
}
