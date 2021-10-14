import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(
    home: First(),
  ));
}
class First extends StatefulWidget {
  const First({Key key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //backgroundColor: Colors.green,
        body: Container(
          height: 680,
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage("asset/milk.jpg",),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(child: Align(alignment:Alignment.topCenter,child: Text("Farm To Home",style: TextStyle(fontSize: 25,color: Color(0xFFFFFFFF)
                ),
                ),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 300),
                child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                        fillColor: Colors.white30,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 0.8,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.phone_android, color: Colors.black54,
                        ),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),

                        hintText:"   Phone Number",hintStyle:TextStyle(color: Colors.black54) )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
