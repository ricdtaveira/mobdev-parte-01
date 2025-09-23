//
void main() {
  print('Função anônima com map:');
  print('');

  const list = ['apples', 'bananas', 'oranges'];

  var uppercaseList = list.map((item) {
    return item.toUpperCase();
  }).toList();
// Convert to list after mapping

  for (var item in uppercaseList) {
    print('$item: ${item.length}');
  }
}
