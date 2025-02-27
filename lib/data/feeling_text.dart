import 'dart:math';

class FeelingTextData {
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

  String getFeelingText(String feeling) {
    switch (feeling) {
      case 'SAD':
        return sadTexts[Random().nextInt(sadTexts.length)];

      case 'ANXIOUS':
        return sadTexts[Random().nextInt(anxiousTexts.length)];

      case 'NORMAL':
        return sadTexts[Random().nextInt(normalTexts.length)];

      case 'ANGRY':
        return sadTexts[Random().nextInt(angryTexts.length)];
      case 'HAPPY':
        return sadTexts[Random().nextInt(happyTexts.length)];

      default:
        return 'Regardless of how you feel, remember that you only come into this life once.';
    }
  }
}
