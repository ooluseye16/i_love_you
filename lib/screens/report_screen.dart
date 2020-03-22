
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:valentine/quotesBrain.dart';

QuotesBrain quotesBrain = QuotesBrain();

class ReportScreen extends StatelessWidget {
  final String loversName;
  final File image;

  const ReportScreen({Key key, this.loversName, this.image,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) =>
          Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          child: Icon(
                            Icons.close,
                            size: 40.0,
                            color: Colors.black,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Text(
                      'MyVal',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.red.shade700,
                      ),
                    ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100.0,
                    child: Row(
                      children: <Widget>[
                        Hero(
                          tag: 'logo',
                          child: CircleAvatar(
                            backgroundImage: image==null? AssetImage('images/placeholder.png') : FileImage(image),
                            radius: 45.0,
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Flexible(
                          child: Center(
                            child: Text(
                              'Hey $loversName',
                              style: TextStyle(
                                color: Colors.red.shade700,
                                  fontSize: 25.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        quotesBrain.getQuotes(),
                        style: TextStyle(
                          fontSize: 24.0,
                          color:  Colors.red.shade700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
