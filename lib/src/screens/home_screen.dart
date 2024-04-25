import 'package:feedback/src/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:feedback/src/core/theme.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/inject.dart';
import '../services/service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('AgroSul',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary,
                  fontFamily: GoogleFonts.baloo2().fontFamily,
                )),
            Text('Feedback',
                style:
                    TextStyle(fontSize: 20, color: theme.colorScheme.secondary)),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Expanded(
                  child: SvgPicture.asset(
                    'assets/images/image1.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildColumn(
                title: 'Perguntas Fechadas',
                onPressed1: () => Navigator.of(context).pushNamed(
                  Routes.productorQuestionsClose,
                ),
                onPressed2: () => Navigator.of(context).pushNamed(
                  Routes.participantQuestionsClose,
                ),
              ),
              buildColumn(
                title: 'Perguntas Abertas',
                onPressed1: () => Navigator.of(context).pushNamed(
                  Routes.productorQuestionsOpen,
                ),
                onPressed2: () async {
                  final result = await getIt<QuestionService>().submitAnswersOffline();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        result.fold(
                          (l) => l.message,
                          (r) => r['message'],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildColumn({
    required String title,
    required VoidCallback onPressed1,
    required VoidCallback onPressed2,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
            fontFamily:
                GoogleFonts.baloo2().fontFamily, // Aplicando a mesma fonte
          ),
        ),
        const SizedBox(height: 20),
        buildButtonWithIcon(text: 'Produtor', onPressed: onPressed1),
        buildButtonWithIcon(text: 'Participante', onPressed: onPressed2),
      ],
    );
  }

  Widget buildButtonWithIcon({
    required String text,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.49,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ElevatedButton.icon(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          icon: const Icon(Icons.arrow_forward_ios),
          label: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onPrimary,
                fontFamily:
                    GoogleFonts.baloo2().fontFamily, // Aplicando a mesma fonte
              ),
            ),
          ),
        ),
      ),
    );
  }
}
