import 'package:flutter/material.dart';

class JpgImage extends StatelessWidget {
  const JpgImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.fill);
  }

  String get _nameWithPath => 'assets/images/$name.jpg';
}
