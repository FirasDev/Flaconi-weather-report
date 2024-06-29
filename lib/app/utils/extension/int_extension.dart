extension IntX on int {
  // Method to transform a Unix integer into a DateTime value
  DateTime timestampToDateTime() {
    return DateTime.fromMillisecondsSinceEpoch(this * 1000);
  }
}
