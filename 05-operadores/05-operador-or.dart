void main() {
  var or = 52 | 17;
  print('52 em binário = ' + 52.toRadixString(2).padLeft(8, '0')); // > 00110100
  print('17 em binario = ' + 17.toRadixString(2).padLeft(8, '0')); // > 00010001
  print('52 or 17      = ' + or.toRadixString(2).padLeft(8, '0')); // > 00010000
  print('52 or 17 na base 10 = ' +
      or.toRadixString(10).padLeft(4, '0')); // > 00010000
}