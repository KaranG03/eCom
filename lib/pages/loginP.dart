import 'package:flutter/material.dart';
import 'package:try1/utils/routes.dart';


class Loginp extends StatefulWidget {
  const Loginp({super.key});

  @override
  State<Loginp> createState() => _LoginpState();
}

class _LoginpState extends State<Loginp> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.HomeRoute);
      setState(() {
        changeButton = false;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child : SingleChildScrollView(
          child:
          Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/logIm.jpg", fit:BoxFit.cover,
                  height: 350,

                ),
                SizedBox(
                  height: 20,
                ),


                Text("welcome $name",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 32),
                  child: Column(

                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "enter usernamne",
                          labelText: "User name",
                        ),
                        validator : (value){
                          if(value!.isEmpty){
                            return "username can't be empty";
                          }
                          return null;
                        },
                        onChanged: (value){
                          name = value;
                          setState(() {});
                        },


                      ),


                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(

                          hintText: "enter password",
                          labelText: "password",
                        ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return "password can't be empty";
                          }

                          if(value.length<6){
                            return "password length should be atleast 6";
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      // ElevatedButton(
                      //  style: TextButton.styleFrom(
                      //    minimumSize: Size(100, 50)
                      //  ),
                      //   onPressed: (){
                      //     Navigator.pushNamed(context, MyRoute.HomeRoute);
                      //   },
                      //   child: Text("Login"),
                      // )
                      Material(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(changeButton? 50: 8),
                        child: InkWell(
                            onTap:() => moveToHome(context),
                            child : AnimatedContainer(
                              duration: Duration(seconds: 1),
                              alignment: Alignment.center,
                              //color: Colors.lightBlue,
                              height: 50,
                              width: changeButton? 50 : 150,
                              child: changeButton?Icon(Icons.done,color: Colors.white):Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              decoration:  BoxDecoration(

                              ),
                            )
                        ),
                      )


                    ],
                  ),

                ),

              ],


            ),
          )
      ),


    );
  }
}
