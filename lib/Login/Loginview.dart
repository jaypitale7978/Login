// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter/material.dart';
//
//
//
// class Loginview extends StatefulWidget {
//   const Loginview({super.key});
//
//   @override
//   State<Loginview> createState() => _LoginviewState();
// }
//
// class _LoginviewState extends State<Loginview> {
//   final FirebaseAuth _authgoogle = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//
//   Future<void> signinwithgoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       if (googleUser == null) return;
//
//       final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//
//       await _authgoogle.signInWithCredential(credential);
//       print("Signed in as: ${_authgoogle.currentUser?.displayName}");
//     } catch (e) {
//       print("Error: $e");
//     }
//   }
//
//
//
//
//   // final GoogleSignIn _googleSignIn = GoogleSignIn();
//   //
//   // Future<void> signinwithgoogle() async {
//   //   try {
//   //     final googleuser = await _googleSignIn.signIn();
//   //     if (googleuser == null) return;
//   //
//   //     final googleauth = await googleuser.authentication;
//   //     final credential = GoogleAuthProvider.credential(
//   //       accessToken: googleauth.accessToken,
//   //       idToken: googleauth.idToken,
//   //     );
//   //
//   //     await _authgoogle.signInWithCredential(credential);
//   //     print("Signed in as: ${_authgoogle.currentUser?.displayName}");
//   //   } catch (e) {
//   //     print("Error: $e");
//   //   }
//   // }
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 56.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10.0),
//                     child: Text(
//                       "Explore now",
//                       style: TextStyle(
//                         fontSize: 50,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10.0),
//                     child: Text(
//                       "Join SO today.",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 31,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//
//               // Google button
//               Padding(
//                 padding: const EdgeInsets.only(top: 38.0),
//                 child: ElevatedButton(
//                   onPressed: signinwithgoogle, // 🔑 call the function
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     minimumSize: Size(380, 61),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Image.asset(
//                         'assets/google_icon.png',
//                         fit: BoxFit.contain,
//                       ),
//                       SizedBox(width: 8),
//                       Text("Sign up with Google"),
//                     ],
//                   ),
//                 ),
//               ),
//
//               // Apple button
//               Padding(
//                 padding: const EdgeInsets.only(top: 18.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // TODO: Add Apple sign-in
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     minimumSize: Size(380, 61),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Image.asset('assets/apple_icon.png', fit: BoxFit.contain),
//                       SizedBox(width: 8),
//                       Text("Sign up with Apple"),
//                     ],
//                   ),
//                 ),
//               ),
//
//               // Divider
//               Padding(
//                 padding: const EdgeInsets.only(top: 48.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Divider(
//                         color: Colors.grey,
//                         thickness: 1,
//                         indent: 18,
//                       ),
//                     ),
//                     Text("    or    ", style: TextStyle(color: Colors.grey)),
//                     Expanded(
//                       child: Divider(
//                         color: Colors.grey,
//                         thickness: 1,
//                         endIndent: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//               // Create account button
//               Padding(
//                 padding: const EdgeInsets.only(top: 28.0),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blueAccent,
//                     minimumSize: Size(380, 61),
//                   ),
//                   child: Text(
//                     "Create account",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 21,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//
//               // Already have account
//               Padding(
//                 padding: const EdgeInsets.only(top: 58.0, right: 180),
//                 child: Text(
//                   "Already have an account?",
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                 ),
//               ),
//
//               // Sign in button
//               Padding(
//                 padding: const EdgeInsets.only(top: 18.0),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     minimumSize: Size(380, 61),
//                   ),
//                   child: Text(
//                     "Sign in",
//                     style: TextStyle(
//                       color: Colors.blueAccent,
//                       fontSize: 21,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//
//               // Terms
//               Padding(
//                 padding: const EdgeInsets.only(top: 148.0, right: 18, left: 36),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: RichText(
//                         text: TextSpan(
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontSize: 14,
//                           ),
//                           children: [
//                             TextSpan(text: "By signing up, you agree to the "),
//                             TextSpan(
//                               text: "Terms of Service",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 decoration: TextDecoration.underline,
//                               ),
//                             ),
//                             TextSpan(text: " and \n"),
//                             TextSpan(text: "                 "),
//                             TextSpan(
//                               text: "Privacy Policy ",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 decoration: TextDecoration.underline,
//                               ),
//                             ),
//                             TextSpan(text: "including "),
//                             TextSpan(
//                               text: "Cookie Use. ",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 decoration: TextDecoration.underline,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  final FirebaseAuth _authgoogle = FirebaseAuth.instance;

  // Use the named constructor
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      'https://www.googleapis.com/auth/userinfo.profile',
    ],
  );

  Future<void> signinwithgoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signInSilently()
          ?? await _googleSignIn.signIn();

      if (googleUser == null) {
        print("❌ No Google user selected");
        return;
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _authgoogle.signInWithCredential(credential);

      print("✅ Signed in as: ${_authgoogle.currentUser?.displayName}");
    } catch (e) {
      print("❌ Error signing in: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: signinwithgoogle,
          child: const Text("Sign in with Google"),
        ),
      ),
    );
  }
}

