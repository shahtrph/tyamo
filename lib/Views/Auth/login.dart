import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Tyamo',

          style: GoogleFonts.getFont('Lato', fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 50.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Sign in to the Tyamo',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 05.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      child: Image.asset(
                        'assets/images/icon1.png',
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ],
                ),
                Text(
                  'to connect with your partner',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextField(
              textAlign: TextAlign.start,
              textInputAction: TextInputAction.none,
              obscureText: false,
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text('Email', style: TextStyle(color: Colors.indigo)),
                fillColor: const Color.fromARGB(255, 247, 238, 238),
                filled: true,
                prefixIcon: Icon(
                  Icons.alternate_email,
                  size: 15,
                  color: Colors.indigo,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            TextField(
              textAlign: TextAlign.start,
              textInputAction: TextInputAction.none,
              obscureText: true,
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text('Password', style: TextStyle(color: Colors.indigo)),
                fillColor: const Color.fromARGB(255, 247, 238, 238),
                filled: true,
                prefixIcon: Icon(
                  Icons.password,
                  size: 15,
                  color: Colors.indigo,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.indigo),

                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                
                

              ),
              onPressed: () {
                print('Elevated Button Clicked!');
              },
              child: const Text('Login'),
            ),

            SizedBox(height: 30),
            Text('Forgot Password',
            style: TextStyle(color: Colors.red,fontSize: 18.0),),
            Row(
              
              children: [
                
                Text('Do not have Account ?'),
                Text('Sign Up')
              ],
            )
          ],
        ),
      ),
    );
  }
}
