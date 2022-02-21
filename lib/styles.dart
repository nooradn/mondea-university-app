// Import Dependencies

import 'package:flutter/material.dart';

// Color Style

class ColorPallete {
  static const primaryColor = Color(0xFFFFFFFF);
}

// Text Styles

TextStyle heading_1 = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: Colors.black);

TextStyle heading_2 = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black);

TextStyle heading_3 = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black);

TextStyle heading3Dimmed = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black45);

TextStyle regularDimmed = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black54);

TextStyle buttonText = const TextStyle(
  fontSize: 17,
  color: Colors.white,
  fontWeight: FontWeight.w700,
);

TextStyle quotes = const TextStyle(
  fontSize: 12,
  color: Colors.black38,
  fontWeight: FontWeight.w400,
);

// Widget Styles

class BoxText extends StatelessWidget {
  const BoxText(
      {Key? key, required this.text, required this.icon, this.pressed})
      : super(key: key);
  final String text;
  final dynamic icon;
  final dynamic pressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => pressed,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon, size: 45),
                const SizedBox(height: 10),
                Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black87),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MatkulList extends StatelessWidget {
  const MatkulList({
    Key? key,
    required this.matkul,
    required this.jamke,
  }) : super(key: key);
  final String matkul;
  final String jamke;
  // final dynamic pressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          child: OutlinedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.bookmark),
                  const SizedBox(width: 10),
                  Text(matkul, style: heading_2),
                  const Spacer(),
                  Text(jamke, style: regularDimmed)
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
