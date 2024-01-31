import 'package:asp/asp.dart';

final counterState = Atom<int>(0);

String get oddEvenText =>
    counterState.value.isOdd ? 'Contagem ímpar' : 'Contagem par';
