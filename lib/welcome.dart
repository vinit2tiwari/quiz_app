import 'package:flutter/material.dart';
import 'package:quiz_app/constant.dart';
import 'package:quiz_app/home.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  Text(
                    "Let's Play Quiz,",
                    style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  Text("Enter your informations below"),
                  Spacer(), // 1/6
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green,
                      hintText: "Full Name",
                      hintStyle: TextStyle(color: Colors.yellow),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  Spacer(), // 1/6
                  InkWell(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      )
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Lets Start Quiz",
                        style: Theme.of(context).textTheme.button.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(flex: 2),
                  Text(
                    "Name: Anshika Anand \nRoll no: 102103380\nBranch:COE,Class:1COE-14",
                    style: TextStyle(color: Colors.purple),
                  ),
                  Spacer(flex: 1) // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
