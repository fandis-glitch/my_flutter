import 'package:flutter/material.dart';
import 'package:jsbreborn/home.dart';
import 'package:jsbreborn/register.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Login',
  home: Login(),
  routes: <String, WidgetBuilder>{
    'Register': (BuildContext context) => new Register(),
    'Home': (BuildContext context) => new Home()
  },
));

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{

  String msg_username='';
  String msg_password='';

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  bool _showPassword = false;

  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 40.0, right: 40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/iconlogin.png", color: Colors.cyan,),
              Padding(padding: EdgeInsets.only(bottom: 50.0),),
              TextFormField(
                controller: username,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'Username',
                  border: OutlineInputBorder()
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(msg_username, style: TextStyle(fontSize: 11.0, color: Colors.red),),
              ),
              Padding(padding: EdgeInsets.only(top: 5.0),),
              TextFormField(
                controller: password,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.vpn_key),
                  suffixIcon: GestureDetector(
                    onTap: (){
                      _togglevisibility();
                    },
                    child: Icon(
                      _showPassword ? Icons.visibility : Icons.visibility_off, color: Colors.cyan,
                    ),
                  )
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(msg_password, style: TextStyle(fontSize: 11.0, color: Colors.red),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 15.0),),
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: RaisedButton(
                  child: Text("Login", style: TextStyle(color: Colors.white),),
                  color: Colors.cyan,
                  onPressed: (){
                    if(username.text == ""){
                      setState(() {
                        msg_username = "Username harus di isi.";
                      });
                    }else if(password.text == ""){
                      setState(() {
                        msg_password = "Password harus di isi.";
                      });
                    }else{
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Home(),
                      ));
                    }
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Dont have account?"),
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Register(),
                      ));
                    },
                    child: Text("create a new account", style: TextStyle(color: Colors.cyan),),
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }

}
