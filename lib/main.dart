import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[700],
          title: Text(
            "TODAY'S MOTIVATION",
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        body: FeelingSection(),
      )),
    );
  }
}

class FeelingSection extends StatefulWidget {
  const FeelingSection({super.key});

  @override
  State<FeelingSection> createState() => _FeelingSectionState();
}

class _FeelingSectionState extends State<FeelingSection> {

  
  String currentText =
      'Regardless of how you feel, remember that you only come into this life once.';

  List<String> sadTexts = [
    "You look a little sad today. Everything will be fine, it's good to get some rest.",
    "It's normal to feel sad. Love yourself and take your time.",
    "Give everything a break. Remind yourself that you are valuable.",
    "No matter how thick the clouds are, the sun always shines behind them.",
    "Life is hard sometimes, but this too shall pass. Just keep going.",
  ];

  List<String> anxiousTexts = [
    "Life can be a little stressful, but you can handle it.",
    "Anxiety is a temporary feeling, don't overdo it.",
    "Take a deep breath and feel yourself in the moment.",
    "No problem in life is unsolvable. Dare to take a step.",
    "Give yourself time to let everything fall into place.",
  ];

  List<String> normalTexts = [
    "Everything seems good, but there is room for better days.",
    "Today you are calm and balanced. Enjoy this moment.",
    "Being normal means stability in life. It is a blessing.",
    "Sometimes ordinary days are the beginning of the most beautiful moments.",
    "Balance is a key component of life. You are living in the moment.",
  ];

  List<String> angryTexts = [
    "Take a breath and calm down a bit. Focus on the little things in life, because everything has a solution.",
    "Learning to control your anger is a sign of strength. Relax a little.",
    "Recognize your emotions, but don't be a slave to them.",
    "Take a few minutes to breathe, calm down, and then speak or act.",
    "Instead of taking out your anger, try to turn it into positive energy.",
  ];

  List<String> happyTexts = [
    "You shine! Keep sharing your energy!",
    "Your energy shines on the people around you!",
    "Keep sharing these beautiful feelings. Happiness is contagious.",
    "The world smiles at you, so smile at it.",
    "The most beautiful moment in life is the moment you feel it fully.",
  ];

  void changeText(String feelingsText) {
    setState(() {
      if (feelingsText == 'SAD') {
        currentText = sadTexts[Random().nextInt(sadTexts.length)];
      } else if (feelingsText == 'ANXIOUS') {
        currentText = anxiousTexts[Random().nextInt(anxiousTexts.length)];
      } else if (feelingsText == 'NORMAL') {
        currentText = normalTexts[Random().nextInt(normalTexts.length)];
      } else if (feelingsText == 'ANGRY') {
        currentText = angryTexts[Random().nextInt(angryTexts.length)];
      } else if (feelingsText == 'HAPPY') {
        currentText = happyTexts[Random().nextInt(happyTexts.length)];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
          ),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/feelings.jpeg'),
          ),
          Text(
            'How do you feel today?',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.blueGrey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () => changeText('SAD'),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/sad.png'),
                ),
              ),
              TextButton(
                onPressed: () => changeText('ANXIOUS'),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/anxios.png'),
                ),
              ),
              TextButton(
                onPressed: () => changeText('NORMAL'),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/normal.png'),
                ),
              ),
              TextButton(
                onPressed: () => changeText('ANGRY'),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/angry.png'),
                ),
              ),
              TextButton(
                onPressed: () => changeText('HAPPY'),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/happy.jpg'),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
              currentText,
            ),
          ),
        ],
      ),
    );
  }
}
