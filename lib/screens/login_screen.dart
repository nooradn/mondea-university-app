import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mondea/styles.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SizedBox(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  const Icon(
                    Icons.lock,
                    size: 60,
                    color: Color(0xFF45AAF2),
                  ),
                  const SizedBox(height: 30),
                  Text('User Login', style: heading_1),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          onEditingComplete: () => node.nextFocus(),
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'NIM',
                            prefixIcon: Icon(Icons.person),
                            counterText: '',
                          ),
                          onChanged: (value) {
                            setState(() {
                              username = value.toString();
                            });
                          },
                          autofocus: true,
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.vpn_key)),
                          obscureText: true,
                          onEditingComplete: () => node.nextFocus(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 40,
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                HomeScreen(valueNim: username),
                          ),
                        );
                      },
                      child: Text(
                        'Masuk',
                        style: buttonText,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Lupa Password?',
                          style: heading3Dimmed,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
