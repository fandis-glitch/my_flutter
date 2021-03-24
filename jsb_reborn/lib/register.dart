
import 'package:flutter/material.dart';

class Register extends StatefulWidget{
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register>{

  String msg_nama_lengkap = '';
  String msg_email = '';
  String msg_no_hp = '';
  String msg_password = '';
  String msg_confirm_pass = '';

  TextEditingController controllerNamaLengkap        = new TextEditingController();
  TextEditingController controllerEmail              = new TextEditingController();
  TextEditingController controllerNoHP               = new TextEditingController();
  TextEditingController controllerPassword           = new TextEditingController();
  TextEditingController controllerConfirmPass        = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40.0,right: 40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              Image.asset("assets/iconlogin.png", color: Colors.black, width: 100.0,),
//              Padding(padding: EdgeInsets.only(bottom: 50.0),),
              TextFormField(
                controller: controllerNamaLengkap,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: "Nama Lengkap"
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 2.0),),
              Container(
                alignment: Alignment.centerRight,
                child: Text(msg_nama_lengkap, style: TextStyle(fontSize: 11.0, color: Colors.red),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 8.0),),

              TextFormField(
                controller: controllerEmail,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email"
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 2.0),),
              Container(
                alignment: Alignment.centerRight,
                child: Text(msg_email, style: TextStyle(fontSize: 11.0, color: Colors.red),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 8.0),),

              TextFormField(
                controller: controllerNoHP,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.smartphone),
                    labelText: "No. HP"
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 2.0),),
              Container(
                alignment: Alignment.centerRight,
                child: Text(msg_no_hp, style: TextStyle(fontSize: 11.0, color: Colors.red),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 8.0),),

              TextFormField(
                controller: controllerPassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Password"
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 2.0),),
              Container(
                alignment: Alignment.centerRight,
                child: Text(msg_password, style: TextStyle(fontSize: 11.0, color: Colors.red),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 8.0),),

              TextFormField(
                controller: controllerConfirmPass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Confirm Password"
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 2.0),),
              Container(
                  alignment: Alignment.centerRight,
                  child: Text(msg_confirm_pass, style: TextStyle(fontSize: 11.0, color: Colors.red),),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20.0),),

              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: RaisedButton(
                  child: Text("Register", style: TextStyle(color: Colors.white),),
                  color: Colors.cyan,
                  onPressed: (){
                    if(controllerNamaLengkap.text == ""){
                      setState(() {
                        msg_nama_lengkap = "Nama lengkap harus di isi.";
                      });
                    }else if(controllerEmail.text == ""){
                      setState(() {
                        msg_email = "Email harus di isi.";
                      });
                    }else if(controllerNoHP.text == ""){
                      setState(() {
                        msg_no_hp = "No. HP harus di isi.";
                      });
                    }else if(controllerPassword.text == ""){
                      setState(() {
                        msg_password = "Password harus di isi.";
                      });
                    }else if(controllerConfirmPass.text == ""){
                      setState(() {
                        msg_confirm_pass = "Confirm password harus di isi.";
                      });
                    }else if(controllerPassword.text != controllerConfirmPass.text){
                      setState(() {
                        msg_password = "Password berbeda dengan confirm password";
                        msg_confirm_pass = "Confirm password berbeda dengan password.";
                      });
                    }else{

                    }
                  },
                ),
              )

            ],
          ),
        )
      ),
    );
  }
}