void main() {
  var not = ~52;
  print(52.toRadixString(2).padLeft(8, '0')); // > 00110100
  print(not); // > -53
  print(not.toRadixString(2)); // > -110101
}
