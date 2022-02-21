import 'package:flutter/material.dart';
import 'package:mondea/styles.dart';

class MatkulScreen extends StatelessWidget {
  const MatkulScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text('Mata Kuliah', style: heading_1),
                  const SizedBox(height: 10),
                  Text(
                      'Berikut ini adalah daftar mata perkuliahan yang terdaftar.\nGanbatte Kudasaii...!!',
                      style: regularDimmed),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Senin', style: heading_3),
                      Text('Jam Kuliah', style: heading3Dimmed)
                    ],
                  ),
                  const SizedBox(height: 10),
                  const MatkulList(
                    matkul: 'Entrepreneurship',
                    jamke: 'Ke-1',
                  ),
                  const MatkulList(
                    matkul: 'Etika Bisnis Islam',
                    jamke: 'Ke-4',
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text('Selasa', style: heading_3),
                  ),
                  const MatkulList(
                    matkul: 'Pengadaan SDM',
                    jamke: 'Ke-2',
                  ),
                  const MatkulList(
                    matkul: 'Manajemen Bisnis',
                    jamke: 'Ke-3',
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text('Rabu', style: heading_3),
                  ),
                  const MatkulList(
                    matkul: 'Teori Ekonomi',
                    jamke: 'Ke-2',
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: TextButton(
                              onPressed: () {},
                              child: Text('Beri penilaian dan feedback',
                                  style: heading3Dimmed)))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
