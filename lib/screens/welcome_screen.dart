import 'package:flutter/material.dart';
import '../styles.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        // Gradient
        gradient: LinearGradient(
          colors: [Color(0xFFE0F2FF), Color(0xFFF2FFFB)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: SizedBox(
          width: 800,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                Image.asset(
                  'assets/images/mlogo.png',
                  height: 300,
                  width: 300,
                ),
                // const SizedBox(height: 5),
                SizedBox(
                    width: 350,
                    child: Column(
                      children: [
                        Text(
                          'Selamat Datang!',
                          style: heading_1,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8.5),
                        Text(
                          'Mondea adalah aplikasi yang dirancang untuk mengelola seputar kemahasiswaan pada Universitas Mondolion.',
                          style: regularDimmed,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Lanjut',
                      style: buttonText,
                    ),
                  ),
                ),
                const Spacer(flex: 3)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
