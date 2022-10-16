import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);

  @override
  State<LoginDemo> createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: FlutterLogo(
                      size: 100,
                      style: FlutterLogoStyle.horizontal,
                    )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "@Username",
                  hintText: "Enter valid Username",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15 , bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter password",
                ),
              ),
            ),
            ElevatedButton(
                onPressed:() {} ,
                child: const Text(
                  "Forgot Password?", style: TextStyle(
                    color: Colors.white, fontSize: 15
                ),
                )
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ElevatedButton(
                  onPressed: () {
                    //Direct to the homepage
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontSize: 25
                    ),
                  )
              ),
            ),
            const SizedBox(
              height: 280,
            ),
            const Text("New User? Create Account")
          ],
        ),
      ),
    );
  }
}

