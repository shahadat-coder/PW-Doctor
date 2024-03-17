
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';

class SecondsRemaining extends StatefulWidget {
  const SecondsRemaining({
    super.key,
  });

  @override
  State<SecondsRemaining> createState() => _SecondsRemainingState();
}

class _SecondsRemainingState extends State<SecondsRemaining> {

  int _secondsRemaining = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSecond,
          (Timer timer) {
        if (_secondsRemaining == 0) {
          timer.cancel();
        } else {
          setState(() {
            _secondsRemaining--;
          });
        }
      },
    );
  }

  void resetTimer() {
    setState(() {
      _secondsRemaining = 60;
    });
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_secondsRemaining > 0)
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.grey),
              children: [
                const TextSpan(text: 'This code will expire in '),
                TextSpan(
                  text:
                  '${_secondsRemaining}s',
                  // Pluralize "second" if needed
                  style: const TextStyle(
                    color: AppColors.primaryColors,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        if (_secondsRemaining == 0)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Code has expired',
                  style: TextStyle(color: Colors.grey)),
              TextButton(
                onPressed: () {
                  resetTimer();
                },
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.primaryColors,
                ),
                child: const Text('Resend Code'),
              ),
            ],
          ),
      ],
    );
  }
}