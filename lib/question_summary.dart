import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                  children: [
                   CircleAvatar(                 
                    backgroundColor:
                        (data['user_answer'] != data['correct_answer'])
                            ? Colors.pink
                            : Colors.cyan,
                    radius: 15.0,
                    child: Text(((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 39, 5, 133),
                          fontSize: 12,
                        )),
              
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(data['question'] as String,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 12,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(data['user_answer'] as String,
                              style: GoogleFonts.lato(
                                color: Colors.purpleAccent,
                                fontSize: 12,
                              )
                          ),
                          Text(data['correct_answer'] as String,
                              style: GoogleFonts.lato(
                                color: Colors.cyan[800],
                                fontSize: 12,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
