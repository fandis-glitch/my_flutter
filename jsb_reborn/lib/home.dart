import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.cyan,
      ),

      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://cdn-image.hipwee.com/wp-content/uploads/2018/10/hipwee-photo-1497704009475-24f74754c24e-640x427.jpg")
                      )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Fandi Sujatmiko"),
                        Text("fandi260193@gmail.com", style: TextStyle(fontSize: 10.0, color: Colors.black54),)
                      ],
                    ),
                  )
                ],
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 50.0),),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/icons/a.png", width: 80.0, color: Colors.lightBlueAccent,),
                        Padding(padding: EdgeInsets.only(top: 10.0),),
                        Text("Pengumpulan Tol", style: TextStyle(color: Colors.black54),),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0, right: 20.0),),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/icons/b.png", width: 80.0, color: Colors.lightBlueAccent,),
                        Padding(padding: EdgeInsets.only(top: 10.0),),
                        Text("Pengumpulan Tol", style: TextStyle(color: Colors.black54),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.only(bottom: 20.0),),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/icons/c.png", width: 80.0, color: Colors.lightBlueAccent,),
                        Padding(padding: EdgeInsets.only(top: 10.0),),
                        Text("Pengumpulan Tol", style: TextStyle(color: Colors.black54),),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0, right: 20.0),),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/icons/d.png", width: 80.0, color: Colors.lightBlueAccent,),
                        Padding(padding: EdgeInsets.only(top: 10.0),),
                        Text("Pengumpulan Tol", style: TextStyle(color: Colors.black54),),
                      ],
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }

}