import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0XFFCBECFF),
                    borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/ic-plus.png',
                      fit: BoxFit.contain,
                      ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0XFFCBECFF),
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    'Personal Finance',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Rp. 1.000.000.000',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
          ),
          ),
    );
  }
}