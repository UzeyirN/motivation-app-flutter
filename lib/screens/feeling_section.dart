import 'package:flutter/material.dart';
import 'package:motivation/data/feeling_text.dart';

import '../widgets/feeling_button.dart';

class FeelingSection extends StatefulWidget {
  const FeelingSection({super.key});

  @override
  State<FeelingSection> createState() => _FeelingSectionState();
}

class _FeelingSectionState extends State<FeelingSection> {
  final feelingTextData = FeelingTextData();
  String currentText =
      'Regardless of how you feel, remember that you only come into this life once.';

  void changeText(String feelingsText) {
    setState(() {
      currentText = feelingTextData.getFeelingText(feelingsText);
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
              buildFeelingButton(
                feeling: 'SAD',
                assetPath: 'assets/sad.png',
                onPressed: () => changeText('SAD'),
              ),
              buildFeelingButton(
                feeling: 'ANXIOUS',
                assetPath: 'assets/anxios.png',
                onPressed: () => changeText('ANXIOUS'),
              ),
              buildFeelingButton(
                feeling: 'NORMAL',
                assetPath: 'assets/normal.png',
                onPressed: () => changeText('NORMAL'),
              ),
              buildFeelingButton(
                feeling: 'ANGRY',
                assetPath: 'assets/angry.png',
                onPressed: () => changeText('ANGRY'),
              ),
              buildFeelingButton(
                feeling: 'HAPPY',
                assetPath: 'assets/happy.jpg',
                onPressed: () => changeText('HAPPY'),
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
