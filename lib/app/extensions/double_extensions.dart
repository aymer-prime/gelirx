extension DoubleExtension on double {
  double normalize(double rangeMin, double rangeMax) {
    var normalizedVal = (this - rangeMin) / (rangeMax - rangeMin);
    //print('ValueNormalization $normalizedVal');
    return normalizedVal;
  }
}
