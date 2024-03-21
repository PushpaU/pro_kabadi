import 'package:flutter/material.dart';
import 'package:kabadi/screens/navigationbar.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 20),
                  const Text(
                    'Kabadi',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFfc5607),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFfc5607),
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 16),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF2C3546),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              labelText: 'Mobile Number',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF2C3546),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.key_sharp),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF2C3546),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.key_sharp),
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF2C3546),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFfc5607)),
                              ),
                            ),
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ClipRRect(
                    child: Container(
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavigationBarWidget()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFFfc5607), // Background color
                          padding: const EdgeInsets.symmetric(
                              horizontal: 65, vertical: 12),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 26,
                            // fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
