import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';

class QrScannerPage extends StatefulWidget {
  const QrScannerPage({Key? key}) : super(key: key);

  @override
  State<QrScannerPage> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  String? qrCode;
  File? photo;
  Position? position;

  final ImagePicker _picker = ImagePicker();

  // Callback cuando se detecta un QR
  void _onDetect(BarcodeCapture capture) async {
    final barcodes = capture.barcodes;
    if (barcodes.isNotEmpty) {
      final code = barcodes.first.rawValue;
      if (code != null && qrCode == null) {
        setState(() {
          qrCode = code;
        });

        // Obtener geolocalización
        await _getCurrentLocation();

        // Mostrar diálogo para tomar foto
        _showTakePhotoDialog();
      }
    }
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return;
    }

    if (permission == LocationPermission.deniedForever) return;

    Position pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      position = pos;
    });
  }

  Future<void> _takePhoto() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        photo = File(image.path);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Foto guardada y puntos sumados!')),
      );
    }
  }

  void _showTakePhotoDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("QR detectado"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("QR: $qrCode"),
            if (position != null)
              Text(
                  "Ubicación: ${position!.latitude}, ${position!.longitude}"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _takePhoto();
            },
            child: const Text("Tomar Foto"),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Cancelar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escanear QR"),
        backgroundColor: Colors.green,
      ),
      body: MobileScanner(
        onDetect: _onDetect,
      ),
    );
  }
}
