import 'package:flutter/material.dart';

class InstagramConnectSwitch extends StatefulWidget {
  const InstagramConnectSwitch({super.key});

  @override
  State<InstagramConnectSwitch> createState() =>
      _InstagramConnectSwitchState();
}

class _InstagramConnectSwitchState extends State<InstagramConnectSwitch> {
  bool isOn = false; // state status Switch; false = mati saat awal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram Connect Switch Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Connect Instagram'),
            const SizedBox(width: 8),
            Switch(
              value: isOn, // value menentukan posisi Switch (true = nyala, false = mati)
              onChanged: (bool val) {
                setState(() {
                  isOn = val; // simpan nilai baru dari Switch ke isOn; setState() membuat tampilan digambar ulang
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
