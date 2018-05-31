import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final header = Text("Pshyceon", 
    style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold), 
    textAlign: TextAlign.center,);

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child:Image.asset('logo.png'),
      ),
    );


    final email = TextFormField(
       keyboardType: TextInputType.emailAddress,
       autofocus: false,
       initialValue: "",
       decoration: InputDecoration(
         hintText: 'Email',
         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
       ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: "",
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );


    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          child: Text("Login"),
          minWidth: 200.0,
          height:42.0,
          onPressed: () {
            //To do
            Navigator.of(context).pushNamed("");
          },
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.green.shade800,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left:24.0, right:24.0),
          children: <Widget>[
            header,
            logo,
            SizedBox(height: 48.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0,),
            loginButton

          ],
        ),
      ),
    );
  }
  
}