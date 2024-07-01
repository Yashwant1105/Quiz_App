import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatelessWidget {
  const HomePage(this.startquiz, {super.key});

  final void Function() startquiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/images/quiz-logo.png"),
            width: 400,
            color: Color.fromARGB(176, 232, 232, 232),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "Check your basic DSA knowledge in here!",
            style: GoogleFonts.urbanist(
                fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            onPressed: startquiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.double_arrow_sharp),
            label: Text(
              " Start Quiz / क्विज़ शुरू किया जाए ",
              style: GoogleFonts.marcellus(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
