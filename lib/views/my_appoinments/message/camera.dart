import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  File? _image;
  final ImagePicker imagePicker = ImagePicker();

  Future getImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),
          SizedBox(width: 15,),
          Text('Type a message',style: TextStyle(
            color: Colors.grey
          ),),
          SizedBox(width: 75,),
          IconButton(onPressed: (){}, icon: Icon(Icons.link,color: Colors.grey,)),
          IconButton(onPressed: (){
            getImage;
          }, icon: Icon(Icons.camera_alt,color: Colors.grey,)),
        ],
      ),
    );
  }
}
