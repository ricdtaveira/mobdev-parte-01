void main() {
  print(50 == 50 && 50 <= 10); // > false
  print((50 == 50 && 50 <= 10) || 52 != 52); // > false
  print(!(50 == 50 && 50 <= 10) || 52 != 20); // > true
}
