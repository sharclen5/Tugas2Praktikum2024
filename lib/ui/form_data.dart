import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      backgroundColor: const Color.fromARGB(255, 96, 170, 250),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxNama(),
            const SizedBox(height: 5),
            _textboxNIM(),
            const SizedBox(height: 5),
            _textboxTahun(),
            const SizedBox(height: 10),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: InputDecoration(
          labelText: "Nama",
          filled: true,
          fillColor: Color.fromARGB(255, 255, 89, 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
          labelText: "NIM",
          filled: true,
          fillColor: Color.fromARGB(255, 255, 89, 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
          labelText: "Tahun",
          filled: true,
          fillColor: Color.fromARGB(255, 255, 89, 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      controller: _tahunController,
    );
  }

  _tombolSimpan() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            String nama = _namaController.text;
            String nim = _nimController.text;
            int tahun = int.parse(_tahunController.text);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, tahun: tahun),
            ));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 9, 46, 210),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
            textStyle: const TextStyle(
              fontSize: 16,
            ),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: const Text('Simpan'),
        ),
        const SizedBox(height: 75),
        Image.asset(
          'images/minisui.png',
          width: 300,
          height: 300,
        ),
      ],
    );
  }

}
