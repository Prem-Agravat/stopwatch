import 'package:flutter/material.dart';
import 'dart:async';

class StopWatchExample extends StatefulWidget {
  const StopWatchExample({super.key});

  @override
  State<StopWatchExample> createState() => _StopWatchExampleState();
}

class _StopWatchExampleState extends State<StopWatchExample> {
  //int seconds = 0;
  int milliseconds = 0;
  late Timer timer;
  bool isRunning = false;
  final laps = <int>[];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onTick(Timer timer) {
    setState(() {
      if (isRunning) {
        //seconds++;
        milliseconds += 100;
      }
    });
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 100), _onTick);
    setState(() {
      //seconds = 0;
      milliseconds = 0;
      isRunning = true;
    });
  }

  void _lap() {
    setState(() {
      laps.add(milliseconds);
      milliseconds = 0;
    });
    print(laps);
  }

  void _clear() {
    setState(() {
      laps.clear();
      milliseconds = 0;
    });
    print(laps);
  }

  Widget _buildCounter(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Laps: ${laps.length + 1}',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: Colors.white),
          ),
          Text(
            _milisToSecond(milliseconds),
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }

  String _milisToSecond(millis) {
    final seconds = millis / 1000;
    return '$seconds seconds';
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stopwatch')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              _milisToSecond(milliseconds),
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: isRunning ? null : _startTimer,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Start'),
              ),
              ElevatedButton(
                onPressed: isRunning ? _stopTimer : null,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Stop'),
              ),
              ElevatedButton(
                onPressed: _lap,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Colors.orange,
                  ),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Lap'),
              ),
              ElevatedButton(
                onPressed: _clear,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Clear'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
