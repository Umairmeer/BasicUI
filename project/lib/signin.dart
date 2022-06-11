import 'package:flutter/material.dart';
import 'package:project/screen.dart';


class SignIn extends StatelessWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("LogIn",style: TextStyle(fontSize: 35,color: Colors.teal,fontWeight: FontWeight.bold),),


          Padding(
            padding: const EdgeInsets.symmetric(vertical:30),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Your Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()
                    ),


                  ),

                  SizedBox(height: 30,),

                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Your Email",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder()
                    ),

                    
                  ),

                  SizedBox(height: 30,),

                  SizedBox(
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35),
                      child: ElevatedButton(onPressed: (){

                        
                      }, child: Text("Login")),
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account?"),
                      
                      TextButton(onPressed: (){
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Screen()),
  );
                      }, child: Text("SignUp"))
                    ],
                  )
                ],

            )),
          )
        ],
      ),
      
    );
  }
}