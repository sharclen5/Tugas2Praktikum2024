import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 89, 0),
        title: const Text("Perkenalan"),
      ),
      backgroundColor: const Color.fromARGB(255, 96, 170, 250),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(2),
          },
          children: [
            TableRow(
              children: [
                const Text("Nama ", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(nama),
              ],
            ),
            TableRow(
              children: [
                const Text("NIM ", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(nim),
              ],
            ),
            TableRow(
              children: [
                const Text("Umur ", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("$umur tahun"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
