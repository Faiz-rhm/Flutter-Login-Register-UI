import 'package:flutter/material.dart';
import 'package:flutter_login/src/loginPage.dart';

import 'widget/registerContainer.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Widget _nameWidget() {
    return Stack(
      children: [
        TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // hintText: 'Enter your full name',
            labelText: 'Name',
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _emailWidget() {
    return Stack(
      children: [
        TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // hintText: 'Enter your full name',
            labelText: 'Email',
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _passwordWidget() {
    return Stack(
      children: [
        TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // hintText: 'Enter your full name',
            labelText: 'Password',
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _submitButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => SignUpPage()));
        },
        child: Stack(children: [
          Positioned(
            right: 20,
            child: SizedBox.fromSize(
              size: Size.square(80.0), // button width and height
              child: ClipOval(
                child: Material(
                  color: Color.fromRGBO(252, 228, 138, 1), // button color
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, bottom: 20),
            child: Text(
              'Register',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 1.6),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _createLoginLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomLeft,
      child: InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage())),
        child: Text(
          'Login',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationThickness: 2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            Positioned(
                height: MediaQuery.of(context).size.height * 0.90,
                child: RegisterContainer()),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: height * .4),
                        _nameWidget(),
                        SizedBox(height: 20),
                        _emailWidget(),
                        SizedBox(height: 20),
                        _passwordWidget(),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  _submitButton(),
                  SizedBox(height: height * .020),
                  _createLoginLabel(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
