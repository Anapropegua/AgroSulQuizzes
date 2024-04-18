import 'package:feedback/src/routes/router.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const QuizAppBar(title: "Início"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(
                Routes.productorQuestions,
              ),
              child: const Text(
                'Formulário Produtor',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(
                Routes.participantQuestions,
              ),
              child: const Text(
                'Formulário Participante',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
