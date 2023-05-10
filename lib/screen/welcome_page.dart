import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  
  Widget button({      //ui
    @required String name,
    Color color,
    Color textColor
  }) {
    return Container(
      height: 45,
      width: 300,
      child: ElevatedButton(
       
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset('images/logo.jpg'),    //put image frm file
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Welcome To Tastee",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Column(
                    children: [
                      Text("Order food form our restaueant and"),
                      Text("Make reservation in real- time")
                    ],
                  ),
                  button(name: 'Login', color: Colors.green,textColor: Colors.white), //for widget ui, construstor
                  button(name: 'SignUp', color: Colors.white,textColor: Colors.green),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
