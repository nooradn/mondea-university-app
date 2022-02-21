import 'package:flutter/material.dart';
import 'matkul_screen.dart';
import '../styles.dart';
import 'notfound.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.valueNim}) : super(key: key);
  final String valueNim;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 40,
                  ),
                  child: SizedBox(
                    width: 550,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hajimemashite! 👋', style: heading_1),
                        const SizedBox(height: 7),
                        Text(
                          'Halo, selamat datang di Mondolion Academy!\nSilahkan klik pada menu.',
                          style: regularDimmed,
                        ),
                        const SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.account_circle_sharp,
                                color: Colors.white30,
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Sorata Adiguna\nMashimoto',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  Text('NIM: $valueNim', style: regularDimmed),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Status:', style: heading_2),
                            const SizedBox(height: 5),
                            Text(
                              'Mahasiswa Aktif Semester 4 \nProdi Ekonomi & Bisnis',
                              style: regularDimmed,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Menu:', style: heading_2),
                            const SizedBox(height: 10),
                            SizedBox(
                              // width: 500,
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      BoxText(
                                        text: 'Mata Kuliah',
                                        icon: Icons.bookmarks,
                                        pressed: MatkulScreen(),
                                      ),
                                      SizedBox(width: 10),
                                      BoxText(
                                        text: 'Perpustakaan',
                                        icon: Icons.menu_book,
                                        pressed: NotFound(),
                                      ),
                                      SizedBox(width: 10),
                                      BoxText(
                                        text: 'KRS/KST/HSS',
                                        icon: Icons.description,
                                        pressed: NotFound(),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const [
                                      BoxText(
                                        text: 'Website',
                                        icon: Icons.language,
                                        pressed: NotFound(),
                                      ),
                                      SizedBox(width: 10),
                                      BoxText(
                                        text: 'Beasiswa',
                                        icon: Icons.school,
                                        pressed: NotFound(),
                                      ),
                                      SizedBox(width: 10),
                                      BoxText(
                                        text: 'Pengaturan',
                                        icon: Icons.settings,
                                        pressed: NotFound(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              '“Bersemangatlah atas hal-hal yang bermanfaat bagimu. Minta tolonglah pada Allah, jangan engkau lemah.”\n(HR. Muslim​)',
                              textAlign: TextAlign.center,
                              style: quotes,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          // padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Mondolion Academy', style: heading_3),
                              Text('Jl. Tegar No.6A - Kudus Kota',
                                  style: heading3Dimmed),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
