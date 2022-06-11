import 'package:flutter/material.dart';
import 'package:project/signup.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/2.jpeg"),
            Container(
              child: Text(
                "LOGIN WITH YOUR MOBILE PHONE NUMBER",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  SingUp()),
  );
                    ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)));
                  },
                  child: Text(
                    "Verify",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "Your personal details are safe with us",
                style: TextStyle(color: Colors.brown),
              ),
            )
          ],
        ),
      ),
    );
  }
}
