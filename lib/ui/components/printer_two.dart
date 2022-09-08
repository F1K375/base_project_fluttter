import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class PrinterTwo extends StatefulWidget {
  const PrinterTwo({Key? key}) : super(key: key);

  @override
  State<PrinterTwo> createState() => _PrinterTwoState();
}

class _PrinterTwoState extends State<PrinterTwo> {
  BlueThermalPrinter bluetooth = BlueThermalPrinter.instance;

  List<BluetoothDevice> _devices = [];
  BluetoothDevice? _device;
  bool _connected = false;
  bool _pressed = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    // initSavetoPath();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Blue Thermal Printer'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Device:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DropdownButton<BluetoothDevice>(
                    items: _getDeviceItems(),
                    onChanged: (value) => setState(() => _device = value),
                    value: _device,
                  ),
                  OutlinedButton(
                    onPressed: _pressed
                        ? null
                        : _connected
                            ? _disconnect
                            : _connect,
                    child: Text(_connected ? 'Disconnect' : 'Connect'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 50),
              child: OutlinedButton(
                onPressed: _connected ? _tesPrint : null,
                child: Text('TesPrint'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _connect() {
    if (_device == null) {
      show('No device selected.');
    } else {
      bluetooth.isConnected.then((isConnected) {
        if (!isConnected!) {
          bluetooth.connect(_device!).catchError((error) {
            setState(() => _pressed = false);
          });
          setState(() => _pressed = true);
        }
      });
    }
  }

  void _disconnect() {
    bluetooth.disconnect();
    setState(() => _pressed = true);
  }

  List<DropdownMenuItem<BluetoothDevice>> _getDeviceItems() {
    List<DropdownMenuItem<BluetoothDevice>> items = [];
    if (_devices.isEmpty) {
      items.add(const DropdownMenuItem(
        child: Text('NONE'),
      ));
    } else {
      _devices.forEach((device) {
        items.add(DropdownMenuItem(
          value: device,
          child: Text(device.name.toString()),
        ));
      });
    }
    return items;
  }

  Future<void> initPlatformState() async {
    List<BluetoothDevice> devices = [];

    try {
      devices = await bluetooth.getBondedDevices();
    } on PlatformException {
      // TODO - Error
      devices = [];
      print("No Device Connected...");
    }

    bluetooth.onStateChanged().listen((state) {
      switch (state) {
        case BlueThermalPrinter.CONNECTED:
          setState(() {
            _connected = true;
            _pressed = false;
          });
          break;
        case BlueThermalPrinter.DISCONNECTED:
          setState(() {
            _connected = false;
            _pressed = false;
          });
          break;
        default:
          print(state);
          break;
      }
    });

    if (!mounted) return;
    setState(() {
      _devices = devices;
    });
  }

  // initSavetoPath() async {
  //   //read and write
  //   //image max 300px X 300px
  //   final filename = 'yourlogo.png';
  //   var bytes = await rootBundle.load("assets/images/yourlogo.png");
  //   String dir = (await getApplicationDocumentsDirectory()).path;
  //   writeToFile(bytes, '$dir/$filename');
  //   setState(() {
  //     pathImage = '$dir/$filename';
  //   });
  // }

  void _tesPrint() async {
    //SIZE
    // 0- normal size text
    // 1- only bold text
    // 2- bold with medium text
    // 3- bold with large text
    //ALIGN
    // 0- ESC_ALIGN_LEFT
    // 1- ESC_ALIGN_CENTER
    // 2- ESC_ALIGN_RIGHT
    bluetooth.isConnected.then((isConnected) {
      if (isConnected ?? false) {
        bluetooth.printNewLine();
        bluetooth.printCustom("AKSELA", 2, 1);
        bluetooth.printCustom("Office Park B18, Grogol, Sukoharjo 57552", 0, 1);
        bluetooth.printCustom("Tel : 089-87-111-820", 0, 1);
        bluetooth.printCustom("Web : www.aksela.id", 0, 1);
        // bluetooth.printImage(pathImage); //path of your image/logo
        // bluetooth.printNewLine();
        // bluetooth.printImageBytes(bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes));
        // bluetooth.printLeftRight("LEFT", "RIGHT", 0);
        // bluetooth.printLeftRight("LEFT", "RIGHT", 1, format: "%-15s %15s %n");
        // bluetooth.printLeftRight("LEFT", "RIGHT", 2);
        // bluetooth.printLeftRight("LEFT", "RIGHT", 3);
        // bluetooth.printLeftRight("LEFT", "RIGHT", 4);
        // bluetooth.print3Column("Col1", "Col2", "Col3", 1);
        // bluetooth.print3Column("Col1", "Col2", "Col3", 1,
        //     format: "%-10s %10s %10s %n");
        bluetooth.printNewLine();
        bluetooth.print4Column("Qt", "Item", "Price", "Total", 1,
            format: "%-31s %10s %7s %7s %n");
        bluetooth.print4Column("3", "Baju Anak", "17.000", "51.000", 0,
            format: "%-3s %10s %7s %7s %n");
        // bluetooth.printNewLine();
        // String testString = " čĆžŽšŠ-H-ščđ";
        // bluetooth.printCustom(testString, 1, 1, charset: "windows-1250");
        // bluetooth.printLeftRight("Številka:", "18000001", 1,charset: "windows-1250");
        // bluetooth.printCustom("Body left", 1, 0);
        // bluetooth.printCustom("Body right", 0, 2);
        bluetooth.printNewLine();
        bluetooth.printLeftRight("TOTAL", "Rp51.000", 1);
        bluetooth.printNewLine();
        bluetooth.printCustom("Cash Rp55.000", 0, 2);
        bluetooth.printCustom("Kembalian Rp4.000", 0, 2);
        bluetooth.printNewLine();
        bluetooth.printQRcode("Insert Your Own Text to Generate", 200, 200, 1);

        // date now
        final now = DateTime.now();
        final formatter = DateFormat('MM/dd/yyyy H:m');
        final String timestamp = formatter.format(now);

        bluetooth.printCustom("Terimakasih.!", 1, 1);
        bluetooth.printCustom(timestamp, 1, 1);
        bluetooth.printNewLine();
        bluetooth.printNewLine();
        bluetooth.paperCut();
      }
    });
  }

  Future show(
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) async {
    await Future.delayed(new Duration(milliseconds: 100));
    ScaffoldMessenger.of(context).showSnackBar(
      new SnackBar(
        content: new Text(
          message,
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
        duration: duration,
      ),
    );
  }
}
