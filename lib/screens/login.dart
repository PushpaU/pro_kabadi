import 'package:flutter/material.dart';



class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  String _password = '';
  bool _obscurePassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Kabadi',
          style: TextStyle(
          fontSize: 40,
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold
        ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height:165 ,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                  onSaved: (value) {
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password ' ,
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  obscureText: _obscurePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),

                const SizedBox(height: 20),
               Align(
                 alignment: Alignment.centerRight,
                 child: GestureDetector(
                   child: Text(
                     "Forgot Password?", style: TextStyle( color: Colors.black.withOpacity(0.6)),
                   ),
                 ),
               ),
                const SizedBox(height: 35),
               ClipRRect(
                   borderRadius: BorderRadius.circular(10.0),
                 child:  ElevatedButton(
                   onPressed: () {
                     if (_formKey.currentState!.validate()) {
                       _formKey.currentState!.save();
                       // You can add authentication logic here
                     }
                   },
                   style: ButtonStyle(
                     backgroundColor:  MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                     minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
                   ),
                   child: const Text('Login', style: TextStyle(fontSize: 20),),
                 ),
               ),
          const SizedBox(height: 35,),
          const Text(
            "OR CONNECT WITH",
            style: TextStyle(

            ),
          ),
                const SizedBox(height: 35,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/google2.png',
                       width: 35,
                       height: 35,
                    ),
                    const SizedBox(width: 40,),
                    Image.asset(
                      'images/facebook.png',
                      width: 35,
                      height: 35,
                    ),
                    const SizedBox(width: 40,),
                    Image.asset(
                      'images/twitter2.png',
                      width: 35,
                      height: 35,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}