extension MapX on Map {
  String stringify() {
    List<String> resultList = [];
    forEach((key, value) {
      String pairString =
          '$key: ${value.toString()}'; // Convert dynamic value to string
      resultList.add(pairString);
    });
    return resultList.join(' ');
  }
}
