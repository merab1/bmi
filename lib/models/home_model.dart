class HomeModel {
  int weight;
  int height;

  HomeModel({ required this.weight, required this.height});

/*  var _bmi;

  String bmiResult() {
    _bmi = weight!/(height!*height!);
    return _bmi.toStringAsFixed(2);
  }

  String advice() {
    if(_bmi >=25) {
      return 'You need to eat less. be careful not to burst out';
    } else if(_bmi >18.5) {
      return 'Keep going bro, you eat awesomely';
    } else {
      return 'What the hell? no one gives you a food?';
    }
  }*/
}