import 'package:flutter/material.dart';
import 'package:shawerma_loca/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  static final String id = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String dropdownValue = "Please, choose your town" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage("assets/shawerma.jpg"),
          width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,fit: BoxFit.cover,),

          SafeArea(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Food App Concept" , style: kTextStyleAppName, ),
                    SizedBox(height: sizeBoxHeight,),
                    Text("Welcome!" , style: kTextStyleForWelcome,),
                    SizedBox(height: sizeBoxHeight,),
                    Text(
                        "Login to your account or choose the city for beeing served without login" , style: kTextStyleForLoginInfo,),
                    SizedBox(height: sizeBoxHeight,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white
                        ),
                      ),
                      child: DropdownButton(


                        hint: Text("Please, choose your townsda" ,),
                        value: dropdownValue,
                        items: [
                          "Please, choose your town" ,
                          "Anaheim",
                          "Rancho Cucamonga",
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: sizeBoxHeight,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: buttonColor,
                        child: Text("Login to account" , style: kTextStyleForLoginInfo,),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
