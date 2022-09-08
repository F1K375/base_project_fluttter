import 'package:flutter/material.dart';

import 'components/printer_one.dart';
import 'components/printer_two.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text("HOME")), body: PrinterOne()),
    );
  }
}
