import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  _ScanQRCodeState createState() => _ScanQRCodeState();
}

class _ScanQRCodeState extends State<GenerateQRCode > {
  TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generate QR COde'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlController.text.isNotEmpty)
                QrImageView(
                    data: urlController.text,
                    size: 200),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Data',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Enter Your Data'
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){},
                  child: Text('Generate QR Code'))
            ],
          ),
        ),
      ),
    );
  }
}
