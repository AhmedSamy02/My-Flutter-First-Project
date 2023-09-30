import 'package:flutter/material.dart';
class CardApp extends StatelessWidget {
  const CardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(40, 68, 97, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 113,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/alone.jpg'),
                  radius: 110,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(18),
                    prefixIcon: const Icon(
                      Icons.person_2,
                    ),
                    filled: true,
                    fillColor: Colors.lightBlue[100],
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 4,
                        color: Colors.blueGrey,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(18),
                    prefixIcon: const Icon(
                      Icons.key,
                    ),
                    filled: true,
                    fillColor: Colors.lightBlue[100],
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 4,
                        color: Colors.blueGrey,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Log in'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  fixedSize: Size(150, 40),
                  elevation: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
