import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int teamA = 0, teamB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[400],
        title: const Text(
          'Points Counter',
        ),
        elevation: 10,
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntrinsicHeight(
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 80, 30, 35),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            'Team A',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            teamA.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 97,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() => teamA++);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent[700],
                              fixedSize: const Size(150, 50),
                              elevation: 10,
                            ),
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() => teamA += 2);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent[700],
                              fixedSize: const Size(150, 50),
                              elevation: 10,
                            ),
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() => teamA += 3);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent[700],
                              fixedSize: const Size(150, 50),
                              elevation: 10,
                            ),
                            child: const Text(
                              'Add 3 Point',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: VerticalDivider(
                        width: 0,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            'Team B',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            teamB.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 97,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() => teamB++);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent[700],
                              fixedSize: const Size(150, 50),
                              elevation: 10,
                            ),
                            child: const Text(
                              'Add 1 Point',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() => teamB += 2);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent[700],
                              fixedSize: const Size(150, 50),
                              elevation: 10,
                            ),
                            child: const Text(
                              'Add 2 Point',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() => teamB += 3);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent[700],
                              fixedSize: const Size(150, 50),
                              elevation: 10,
                            ),
                            child: const Text(
                              'Add 3 Point',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamA = 0;
                    teamB = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  fixedSize: const Size(180, 45),
                ),
                child: const Text(
                  'Reset',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
