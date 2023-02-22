// Fluxo de controle break e continue

void main() {
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    if (i % 2 == 0) {
      continue;
    }
    print(i);
  }
}
