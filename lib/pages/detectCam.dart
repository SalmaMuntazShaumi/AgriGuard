import 'package:flutter/material.dart';

class CamDetectPage extends StatefulWidget {
  const CamDetectPage({Key? key}) : super(key: key);

  @override
  State<CamDetectPage> createState() => _CamDetectPageState();
}

class _CamDetectPageState extends State<CamDetectPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Ini Halaman camera'),
      ),
    );
  }
}
