import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:signlanguaglearning/Login.dart';


class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var myusername, myemail, mypassword;
  GlobalKey<FormState> userkey= new GlobalKey<FormState>();
  signUp()async{
    var FormData= userkey.currentState;
    if(FormData!.validate())
    {
      FormData.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance.
        createUserWithEmailAndPassword(
          email: myemail,
          password: mypassword,
        );
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          AwesomeDialog(context: context,
            title: "Error",
            body: Text("password too week"),
          )..show();
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          AwesomeDialog(context: context,
            title: "Error",
            body: Text("The account already exists for that email."),
          )..show();
        }
      } catch (e) {
        print(e);
      }
    }
    else
    {

    }
    }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
                          onSaved: (val){
                            myusername=val;
                          },
                          validator: (val){
                            if(val!.length>100)
                            {
                              return "user name can't be larger than 100";
                            }
                            if(val.length<2)
                            {
                              return"user name must be larger than two";
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "username",
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(borderSide: BorderSide(width: 1))),
                        ),
                        SizedBox(height: 20),
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
                              child: Text("SignUp ",
                                style: TextStyle(fontSize: 20),),
                              onPressed: () async {
                                UserCredential response= await signUp();
                                print("==========================");
                                if(response!=null)
                                {
                                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>LoginPage()));
                                }
                                else {
                                  print("Sign Up Failed");
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


