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
                Routes.productorQuestionsOpen,
              ),
              child: const Text(
                'Formulário Produtor [Aberto]',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(
                Routes.productorQuestionsClose,
              ),
              child: const Text(
                'Formulário produtor [Fechado]',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(
                Routes.participantQuestionsOpen,
              ),
              child: const Text(
                'Formulário Participante [Aberto]',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(
                Routes.participantQuestionsClose,
              ),
              child: const Text(
                'Formulário Participante [Fechado]',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
