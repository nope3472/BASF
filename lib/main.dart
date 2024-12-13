import 'package:flutter/material.dart';
import 'package:hr/dashboard.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'BASF Connect',
     theme: ThemeData(
       primarySwatch: Colors.orange,
     ),
     home: LoginScreen(),
   );
 }
}

class LoginScreen extends StatefulWidget {
 @override
 _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 final _usernameController = TextEditingController();
 final _passwordController = TextEditingController();

 @override
 void dispose() {
   _usernameController.dispose();
   _passwordController.dispose();
   super.dispose();
 }

 void _login() async {
   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => SplashScreen()),
   );
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     resizeToAvoidBottomInset: false,
     body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage('lib/assets/HR.png'),
           fit: BoxFit.cover,
         ),
       ),
       child: Center(
         child: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 32.0),
             child: Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Column(
                   children: [
                     Image.asset('lib/assets/logo.png', height: 80),
                     SizedBox(height: 8),
                     
                     Image.asset('lib/assets/connect.jpg', height: 80),
                   ],
                 ),
                 SizedBox(height: 32),
                 TextField(
                   controller: _usernameController,
                   decoration: InputDecoration(
                     hintText: 'Username',
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                     filled: true,
                     fillColor: Colors.white,
                   ),
                 ),
                 SizedBox(height: 16),
                 TextField(
                   controller: _passwordController,
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: 'Password',
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                     filled: true,
                     fillColor: Colors.white,
                   ),
                 ),
                 SizedBox(height: 16),
                 SizedBox(
                   width: MediaQuery.of(context).size.width * 0.8,
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       minimumSize: Size(double.infinity, 45),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                       backgroundColor: Colors.white,
                     ),
                     onPressed: _login,
                     child: Text('Log in', style: TextStyle(color: Colors.orange.shade700)),
                   ),
                 ),
                 SizedBox(height: 8),
                 TextButton(
                   onPressed: () {},
                   child: Text('Forgot Password', style: TextStyle(color: Colors.orange.shade700)),
                 ),
                 SizedBox(height: 16),
                 SizedBox(
                   width: MediaQuery.of(context).size.width * 0.6,
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       minimumSize: Size(double.infinity, 40),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                       backgroundColor: Colors.white,
                     ),
                     onPressed: () {},
                     child: Text('Create', style: TextStyle(color: Colors.orange.shade700)),
                   ),
                 ),
                 SizedBox(height: 8),
                 Text(
                   "Don't Have an Account?",
                   style: TextStyle(color: Colors.grey.shade700),
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

class SplashScreen extends StatefulWidget {
 @override
 _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
 void initState() {
   super.initState();
   _navigateToHome();
 }

 void _navigateToHome() async {
   await Future.delayed(Duration(seconds: 3));
   Navigator.pushReplacement(
     context,
     MaterialPageRoute(builder: (context) => DashboardScreen()),
   );
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: const Color.fromARGB(255, 206, 128, 10),
     body: Center(
       child: TweenAnimationBuilder(
         tween: Tween<double>(begin: 1.0, end: 2.0),
         duration: Duration(seconds: 3),
         curve: Curves.easeOut,
         builder: (context, double scale, child) {
           return Transform.scale(
             scale: scale,
             child: child,
           );
         },
         child: Image.asset('lib/assets/logo.png', height: 150),
       ),
     ),
   );
 }
}

