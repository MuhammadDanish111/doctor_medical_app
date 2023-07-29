import 'package:doctor_app/doctor_name.dart';
import 'package:doctor_app/treatment_type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              //Placeholder(fallbackHeight: 100,),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Muhammad Danish",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xff8a86e2),
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.person,color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 170,
                  decoration: BoxDecoration(
                      color: Color(0xffffe0f4),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 130,
                        width: 100,
                        child: Image.asset(
                          'assets/images/lovely.png',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "How do you feel?",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Fill out our medical\ncard right now",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff8a86e2)),
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xfff6f4ff),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "How can we help you?",
                            hintStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 17),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey[500],
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TreatmentList(iconPathImage: 'assets/images/tooth.png', treatmentName: 'Dentist')
                  ,TreatmentList(iconPathImage: 'assets/images/surgeon.png', treatmentName: 'Surgeon'),
                  TreatmentList(iconPathImage: 'assets/images/lovely.png', treatmentName: 'Therapist')],

                ),
              ),
              SizedBox(
                height: 20,
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doctor List",style: TextStyle(fontSize: 25),),
                  Text("See all",style: TextStyle(fontSize: 16,color: Colors.grey[500]),),

                ],
              ),
            ),
              SizedBox(
                height: 10,
              ),
              Expanded(child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorNameList(doctorImagePath: 'assets/images/A.jpg',doctorName: "Dr.Whatson",
                  doctorCategory: "Therapist, 7 y.e.",),
                  DoctorNameList(doctorImagePath: 'assets/images/A.jpg',doctorName: "Dr.Tale",
                    doctorCategory: "Surgeon, 5 y.e.",)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
