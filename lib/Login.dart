import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:signlanguaglearning/HomePage.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  var myemail, mypassword;


  //email and password----------------------
  GlobalKey<FormState>userkey  = new GlobalKey<FormState>();
  signIN()async {
    var FormData = userkey.currentState;
    if (FormData!.validate()) {
      FormData.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance.
        signInWithEmailAndPassword(
          email: myemail,
          password: mypassword,
        );
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'wrong-password') {
          AwesomeDialog(context: context,
            title: "Error",
            body: Text("password wrong for that user"),
          )..show();
          print('The password provided is too weak.');
        } else if (e.code == 'user-not-found') {
          AwesomeDialog(context: context,
            title: "Error",
            body: Text("NO user found for that email"),
          )..show();
        }
      } catch (e) {
        print(e);
      }
    }
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF3E5E5),
                Color(0xFFECB6B6),
                Color(0xFFE88585),
                Color(0xFFE36666),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
          child: ListView(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 10),
                  margin: EdgeInsets.only(top: 1),
                  width: 150,
                  child:
                  Image.asset("Images/SignLogo.png", height: 150, width: 150)),
              Container(
                padding: EdgeInsets.all(20),
                child: Form(
                    key: userkey,
                    child: Column(
                      children: [
                        TextFormField(
                          onSaved: (val) {
                            myemail = val;
                          },
                          validator: (val) {
                            if (val!.length > 100) {
                              return "Email can't to be larger than 100 letter";
                            }
                            if (val.length < 2) {
                              return "Email can't to be less than 2 letter";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Email",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(width: 2, color: Colors.black))),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          onSaved: (val) {
                            mypassword = val;
                          },
                          validator: (val) {
                            if (val!.length > 100) {
                              return "Password can't to be larger than 100 letter";
                            }
                            if (val.length < 4) {
                              return "Password can't to be less than 4 letter";
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "password",
                              prefixIcon: Icon(Icons.vpn_key,color: Colors.white),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1))),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text("if you don't have an account"),
                              InkWell(
                                child: Text(
                                  "Click Here",
                                  style: TextStyle(color: Colors.red),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushNamed("signup");
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: RaisedButton(

                              color: Colors.white,
                              textColor: Colors.red,
                              child: Text("Login ",
                                style: TextStyle(fontSize: 20),),
                              onPressed: () async {
                                UserCredential user=await signIN();
                                if(user!=null)
                                {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                                }
                                else {
                                  print("Sign in Failed");
                                }
                              }
                          ),
                        ),

                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
