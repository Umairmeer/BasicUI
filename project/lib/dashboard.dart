import 'package:flutter/material.dart';
import 'package:project/login.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: Container(
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/AA.jpeg",
              height: 300,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogIn()),
                      );
                      ElevatedButton.styleFrom(
                        
                          minimumSize: Size(70, 100),  primary: Colors.blue);
                    },
                    child: Text("Instant Pay" ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
              ),
            )
          ],
        )),
      ),
    );
  }
}
