import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? sex = 'male'; // state nilai radio terpilih (groupValue); awalnya 'male' sehingga Male terpilih; dipakai bersama oleh semua Radio dalam grup

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gender Selection Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Gender: '),
            const SizedBox(width: 8),
            Row(
              children: [
                Radio<String>(
                  value: 'male',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      sex = val; // simpan value radio yang diklik ('male') ke sex; setState() membuat radio yang value-nya sama dengan sex tampil terpilih
                    });
                  },
                ),
                const Text('Male'),
              ],
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                Radio<String>(
                  value: 'female',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      sex = val; // simpan value radio yang diklik ('female') ke sex; setState() membuat radio yang value-nya sama dengan sex tampil terpilih
                    });
                  },
                ),
                const Text('Female'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
