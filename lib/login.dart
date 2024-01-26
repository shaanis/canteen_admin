import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isPasswordVisible = false;
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/eee.png'),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      fillColor: Color(0xffebebec),
                      filled: true,
                      hintText: "Enter your username",
                      hintStyle: TextStyle(
                        color: Color(0xffb8b7b8),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      fillColor: Color(0xffebebec),
                      filled: true,
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        color: Color(0xffb8b7b8),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_isPasswordVisible ? Icons.visibility_sharp : Icons.visibility_off_sharp,
                            size: 18),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 185.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(fontSize: 11, color: Color(0xffcccccd)),
                      )),
                ),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => MenuPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Color(0xff53e510),
                        minimumSize: Size(400, 50)),
                    child: Text("Sign In")),
              ],
            ),
          ),
      ),
    );
  }
}
