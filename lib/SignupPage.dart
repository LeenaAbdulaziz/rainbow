
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:rainbow/LoginScreen.dart';
import 'package:rainbow/SignupPage.dart';

import 'main.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(

          child:ListView(
             children: [
               Column(
                 children: [
                   Text(
                     'Sign Up',
                     style: TextStyle(
                         fontWeight: FontWeight.w500,
                         fontSize: 40.0,
                         color: Colors.blue),
                   ),
                   SizedBox(
                     height: 25,
                   ),
                   TextFormField(
                     keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
                       labelText: 'Email Address',
                       border: OutlineInputBorder(),
                       prefixIcon: Icon(Icons.email),
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   TextFormField(
                     keyboardType: TextInputType.visiblePassword,
                     obscureText: true,
                     decoration: const InputDecoration(
                       labelText: 'Password',
                       border: OutlineInputBorder(),
                       prefixIcon: Icon(Icons.lock),
                       suffixIcon: Icon(Icons.remove_red_eye),
                     ),
                   ),

                   SizedBox(
                     height: 30,
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         '''Already have an account? ''',
                         style: TextStyle(
                           color: Colors.black.withOpacity(0.5),
                           fontSize: 16.0,
                         ),
                       ),
                       TextButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) {
                               return LoginScreen();

                             }),

                           ); // This trailing comma makes auto-formatting nicer for build methods.

                         },
                         child: Text('Log in'),
                       ),


                     ],
                   ),

                   Align(
                     alignment: Alignment.centerLeft,

                       child: Text(
                         "Name",
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 16.0,
                         ),
                       ),
                     ),


                   SizedBox(
                     height: 25,
                   ),
                   TextFormField(
                     keyboardType: TextInputType.name,
                     decoration: InputDecoration(
                       labelText: 'First name',
                       border: OutlineInputBorder(),

                     ),
                   ),
                   SizedBox(
                     height: 25,
                   ),
                   TextFormField(
                     keyboardType: TextInputType.name,
                     decoration: InputDecoration(
                       labelText: 'Last name',
                       border: OutlineInputBorder(),

                     ),
                   ),

                   Divider(
                     color: Colors.black,
                     height: 50,

                   ),


                   Align(
                     alignment: Alignment.centerLeft,

                     child: Text(
                       "Adress",
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 16.0,
                       ),
                     ),
                   ),

                   SizedBox(
                     height: 25,
                   ),
                   TextFormField(
                     keyboardType: TextInputType.streetAddress,
                     decoration: InputDecoration(
                       labelText: 'Address line1',
                       border: OutlineInputBorder(),

                     ),
                   ),
                   SizedBox(
                     height: 25,
                   ),
                   TextFormField(
                     keyboardType: TextInputType.streetAddress,
                     decoration: InputDecoration(
                       labelText: 'Address line2',
                       border: OutlineInputBorder(),

                     ),
                   ),
                   Divider(
                     color: Colors.black,
                     height: 50,
                   ),


                   Container(
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                     width: double.infinity,
                     height: 60,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(100),
                     ),
                     child: MaterialButton(
                       onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) {
                             return MyApp();

                           }),

                         ); // This trailing comma makes auto-formatting nicer for build methods.

                       },
                       color: Colors.blue,
                       child: Text(
                         'Sign Up',
                         style: TextStyle(
                           fontSize: 20,
                           color: Colors.white,
                         ),
                       ),
                     ),
                   ),


                 ],
               )
             ],
          )



        ),
      ),
    );
  }
}