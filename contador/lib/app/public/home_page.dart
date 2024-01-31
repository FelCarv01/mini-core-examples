import 'package:asp/asp.dart';
import 'package:contador/app/interactor/actions/counter_action.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../interactor/atoms/counter_state.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    var counterValue = context.select(() => counterState.value);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              oddEvenText,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$counterValue',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(122),
            const Wrap(
              runSpacing: 12,
              spacing: 16,
              children: [
                ElevatedButton(
                    onPressed: imcrementCounterAction, child: Icon(Icons.add)),
                ElevatedButton(
                    onPressed: decrementCounterAction,
                    child: Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
