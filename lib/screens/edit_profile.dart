import 'package:flutter/material.dart';

void main() {
  runApp(const EditProfilePage());
}

class EditProfilePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const EditProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Center(
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        body: const SingleChildScrollView(child: EditProfileForm()),
      ),
    );
  }
}

class EditProfileForm extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const EditProfileForm({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _EditProfileFormState createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  bool _isChecked = false;
// Default profile name
  // You can use a TextEditingController to control the text field

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFf7f2f0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // Add logic to change profile photo
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xFF00c3a2),
                    backgroundImage: AssetImage("images/tamilThalaivas.png"),
                    radius: 50,
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      // Add logic to choose photo from device
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'First Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            SizedBox(height: 5),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Color.fromRGBO(0, 0, 0, 0.02),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text('Last Name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))),
                            SizedBox(height: 5),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Color.fromRGBO(0, 0, 0, 0.02),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Email',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))),
                  const SizedBox(height: 5),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color.fromRGBO(0, 0, 0, 0.02),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Phone Number',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ))),
                  const SizedBox(height: 5),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Color.fromRGBO(0, 0, 0, 0.02),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("City",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))),
                            SizedBox(height: 5),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Color.fromRGBO(0, 0, 0, 0.02),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("State",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))),
                            SizedBox(height: 5),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Color.fromRGBO(0, 0, 0, 0.02),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Change Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16))),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[50]?.withOpacity(0.5),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text('Current Password',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(0, 0, 0, 0.02),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text('New Password',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(0, 0, 0, 0.02),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text('Confirm Password',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(0, 0, 0, 0.02),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.black,
                    ),
                    const Text("Terms and conditions",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    constraints: const BoxConstraints(
                        maxWidth:
                            600), // Adjust the maxWidth as per your layout
                    child: const Text(
                      'Welcome to Kabadi App. These Terms and Conditions outline the rules and regulations for the use of Kabadi App\'s services. By accessing this app, we assume you accept these terms and conditions. Do not continue to use Kabadi App if you do not agree to take all of the terms and conditions stated on this page. By using Kabadi App, users acknowledge and agree to the collection and use of their personal information as outlined in the app\'s Privacy Policy. Kabadi App is committed to protecting the privacy of its users and will only use personal information in accordance with applicable laws and regulations.',
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {
                  // Add logic to update profile
                  _updateProfile();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 70,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  backgroundColor: const Color(0xFFfc5607),
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  "Update Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateProfile() {
    // Update profile logic here
    setState(() {
      // Add logic to update the profile photo
    });
    // Show a confirmation dialog or navigate back to the previous screen
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Profile Updated"),
          content: const Text("Profile updated successfully!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    // Clean up the TextEditingController

    super.dispose();
  }
}
