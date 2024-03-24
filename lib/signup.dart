import 'package:flutter/material.dart';
import 'package:login_signup1/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: Container(
      margin: EdgeInsets.all(20),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 200,
              child: Image.asset("images/p2.jpg"),
            ),
          ),
          Text("SignUp",style: TextStyle(fontSize: 20),textAlign: TextAlign.right,),
          SizedBox(height:5 ,),
           const     TextField(
             style: TextStyle(height: 1),
               
              decoration: InputDecoration(
                hintText: "Username",
                hintStyle: TextStyle(color:Colors.white,fontSize: 13),
                prefixIcon: Icon(Icons.person,color: Colors.white,),
                fillColor: Colors.yellow,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  
                  borderSide: BorderSide(color: Colors.white,),
                 
                )
              ),
              
            ),
            SizedBox(height: 5),
              const     TextField(
             style: TextStyle(height: 1),
               
              decoration: InputDecoration(
                hintText: "Mobile Number",
                hintStyle: TextStyle(color:Colors.white,fontSize: 13),
                prefixIcon: Icon(Icons.phone,color: Colors.white,),
                fillColor: Colors.yellow,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  
                  borderSide: BorderSide(color: Colors.white,),
                 
                )
              ),
              
            ),
            SizedBox(height: 5),
TextField(
  style: TextStyle(height: 1), 
  obscureText: _obscureText,
  decoration: InputDecoration(
    hintText: "Password",
    hintStyle: TextStyle(color: Colors.white, fontSize: 13),
    prefixIcon: Icon(Icons.password, size: 20, color: Colors.white),
    suffixIcon: IconButton(
      icon: Icon(
        _obscureText ? Icons.visibility : Icons.visibility_off,
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
    ),
    fillColor: Colors.yellow,
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  ),
),            
           SizedBox(height: 15),
Center(
  child: ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),
      minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 50)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      elevation: MaterialStateProperty.all(0),
      side: MaterialStateProperty.all(BorderSide(color: Colors.yellow)),
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.orange; // Change the color when button is pressed
          }
          return Colors.white; // Use default color
        },
      ),
    ),
    onPressed: () {
      
    },
    child: Text(
      'SignUp',
      style: TextStyle(fontSize: 15, color: Colors.yellow),
    ),
  ),
),
            SizedBox(height: 15),
Row(
  children: [
    Text("Already a member?",),
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => login())); 
      },
      child: Text(
        "Login",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow),
      ),
    )
  ],
)



        ],
       ),
     ),
      );;
  }
}