import 'dart:io';
import 'package:flutter/material.dart';
import 'package:valentine/screens/report_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:valentine/quotesBrain.dart';

QuotesBrain quotesBrain = QuotesBrain();

class Screen01 extends StatefulWidget {

  @override
  _Screen01State createState() => _Screen01State();
}

class _Screen01State extends State<Screen01> {
  File _image;
  String loversName;
  


  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'MyVal',
                  style: TextStyle(
                    color: Colors.red.shade700,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: 120.0,
                ),
              ),
              Center(
               child: GestureDetector(
                 child: Hero(
                   tag: 'logo',
                   child: CircleAvatar(
                     radius: 90.0,
                     backgroundImage: _image == null ? AssetImage('images/placeholder.png') : FileImage(_image),
                     backgroundColor: Colors.red,
                     //child: _image == null ? Icon(Icons.add_a_photo, color: Colors.white,) : Image.file(_image),
                   ),
                 ),
                 onTap: getImage,
               ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                decoration: InputDecoration(
                  enabled: true,
                    hintText: 'Name of Lover',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 15.0
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red.shade700, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(0)
                      ),
                    ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red.shade700, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(0)
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red.shade700, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(0)
                    ),
                  ),
                ),
                onChanged: (newValue) {
                  loversName = newValue;
                  },
              ),
              SizedBox(
                height: 6.0,
              ),
              Material(
                elevation: 2.0,
                color: Colors.red.shade700,
                borderRadius: BorderRadius.circular(10.0),
                child: MaterialButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () async {
                   await Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ReportScreen(
                          loversName: loversName,
                          image: _image,
                        );
                      }
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

}
