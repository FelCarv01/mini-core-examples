import 'package:contador/app/interactor/atoms/counter_state.dart';

imcrementCounterAction() {
  counterState.value++;
}

decrementCounterAction() {
  counterState.value--;
}
