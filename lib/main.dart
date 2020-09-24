

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: FittedBox(
                fit:BoxFit.cover,
                child: Image.network("https://cdn.bioguia.com/embed/9be5adea5110d6fe80bec835b91556812511/Everest.jpg?imagick=1&size=500"
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(60),
                  child: Image.network("http://www.consero.com/wp-content/uploads/2016/06/ConseroLogo_whitecolor-small.png"
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: 200,
                ),
                TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                        icon: Icon(
                          Icons.perm_identity,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                    ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                      size: 40,
                    )
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                  ),
                  minWidth: 300.0,
                  height: 30.0,
                  onPressed: () {},
                  color: Colors.orange,
                  child: Text('Log in',
                      style: TextStyle(color: Colors.white)),
                ),
                Center(
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.white,
                      height: 3,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      color: Colors.white,
                      height: 3,
                    ),
                  ),
                ),
              ],
            ),
              ],
            ),
        ),
      );
  }
}