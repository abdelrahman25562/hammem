import 'package:flutter/material.dart';
import 'package:hammem/services/auth.dart';

import '../login.dart';
import 'Admins.dart';

class HomeAdmin extends StatelessWidget {
  @override
  final _auth = Auth();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading:   IconButton(icon: Icon(Icons.exit_to_app,color: Colors.black,), onPressed: (){
          _auth.signOut();
          Navigator.of(context).push(MaterialPageRoute(builder: (conntext)=>LoginScreen()));
        }),
        actions: <Widget>[
          Image.asset(
            'assets/images/logo.webp',
            width: 70.0,
            height: 75.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Admins()));
              },
              child: Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffDEB3C8)
                  )
                ),
                child: Center(child: Text('فديو',style: TextStyle(fontFamily: 'Cairo',fontSize: 20.0),)),
              ),
            ),
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: (){
               //todo---
              },
              child: Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffDEB3C8)
                    )
                ),
                child: Center(child: Text('مقال',style: TextStyle(fontFamily: 'Cairo',fontSize: 20.0),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
