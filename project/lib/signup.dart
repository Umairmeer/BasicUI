import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/signin.dart';

class SingUp extends StatelessWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          Container(child: Text("Verification Code", style: TextStyle(color: Colors.black,fontSize: 27))),
          SizedBox(height: 10,),
          Container(child: Text("We have sent the verification code to",)),
          SizedBox(height: 10,),
          Container(child: Text("+92********34")),

          SizedBox(height: 50,),

          Form(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 68,
                width: 64,

                child: TextField(
                  decoration: InputDecoration(hintText: "0"),
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),

              SizedBox(
                height: 68,
                width: 64,
                child: TextField(
                  decoration: InputDecoration(hintText: "0"),
                  style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                ),
              ),
                  SizedBox(
                height: 68,
                width: 64,
                child: TextField(
                  decoration: InputDecoration(hintText: "0"),
                  style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                ),
              ),
                  SizedBox(
                height: 68,
                width: 64,
                child: TextField(
                  decoration: InputDecoration(hintText: "0"),
                  style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                ),
              ),

              
            ],
          )),


          SizedBox(height: 80,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: (){
                  
                      ElevatedButton.styleFrom(
                        
                        primary: Colors.amber,
                      );
                      
                    }, child: Text("Resend")),
              ),

               SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: (){

                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  SignIn()),
  );
                  
                      ElevatedButton.styleFrom(
                        
                        primary: Colors.purple,
                      );
                      
                    }, child: Text("Confirm")),
              ),
            ],
          )
          
        ],
      ),
    );
  }
}
