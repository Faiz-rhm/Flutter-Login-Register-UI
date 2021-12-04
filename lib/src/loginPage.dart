import 'package:flutter/material.dart';
import 'package:flutter_login/src/registerPage.dart';
import 'package:flutter_login/src/widget/loginContainer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _usernameWidget() {
    return Stack(
      children: [
        TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(
                color: Color.fromRGBO(173, 183, 192, 1),
                fontWeight: FontWeight.bold),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(173, 183, 192, 1)),
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
            labelText: 'Password',
            labelStyle: TextStyle(
                color: Color.fromRGBO(173, 183, 192, 1),
                fontWeight: FontWeight.bold),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(173, 183, 192, 1)),
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
              size: Size.square(80.0),// button width and height
              child: ClipOval(
                child: Material(
                  color: Color.fromRGBO(252, 228, 138, 1), // button color
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 50,
              bottom: 20
            ),
            child: Text(
              'Login',
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

  Widget _createAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterPage())),
            child: Text(
              'Register',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2),
            ),
          ),
          InkWell(
            // onTap: () {
            //   // Navigator.push(
            //   //     context, MaterialPageRoute(builder: (context) => SignUpPage()));
            // },
            child: Text(
              'Forgot Password',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2),
            ),
          ),
        ],
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
                height: MediaQuery.of(context).size.height * 0.40,
                child: LoginContainer()),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: height * .5),
                        _usernameWidget(),
                        SizedBox(height: 20),
                        _passwordWidget(),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  _submitButton(),
                  SizedBox(height: height * .060),
                  _createAccountLabel(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
