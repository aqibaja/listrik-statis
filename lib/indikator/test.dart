import 'package:trotter/trotter.dart';

main() {
  final items = characters('2344'),
      indices = List<int>.generate(items.length, (i) => i),
      permsOfItems = indices
          .permutations()
          .iterable
          .map((perm) => perm.map((index) => items[index]).join());

  print('All permutations (including non unique):');
  for (final perm in permsOfItems) {
    print(perm);
  }

  print('\nOnly unique:');
  for (final perm in permsOfItems.toSet()) {
    print(perm);
  }
}
