import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File _image;
  AssetImage avataar = AssetImage("images/avataar.png");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: _image == null
                ? CircleAvatar(
                    backgroundImage: avataar,
                    maxRadius: 100,
                  )
                : CircleAvatar(
                    backgroundImage: FileImage(_image),
                    maxRadius: 100,
                  ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
          ),
          Center(
            child: RaisedButton(
              onPressed: openCamera,
              color: Color(0xff25D366),
              child: Text(
                "Open camera",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
          ),
          Center(
            child: RaisedButton(
              onPressed: openGallery,
              color: Color(0xff25D366),
              child: Text(
                "Open Gallery",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future openCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  Future openGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = picture;
    });
  }
}
