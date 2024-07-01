import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:second_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData["correct_answer"];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        QuestionIdentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              itemData['question'] as String,
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(itemData["user_answer"] as String,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 0, 140, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            Text(
              itemData["correct_answer"] as String,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 255, 0, 47),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            )
          ],
        ))
      ],
    );
  }
}
