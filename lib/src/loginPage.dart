import 'package:flutter/material.dart';
import 'package:flutter_login/src/registerPage.dart';
import 'package:flutter_login/src/widget/loginContainer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            Positioned(
              height: height * 0.43,
              child: const LoginContainer()
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: height * .55),
                        _usernameWidget(),
                        const SizedBox(height: 20),
                        _passwordWidget(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  _submitButton(),
                  SizedBox(height: height * .035),
                  _createAccountLabel(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _usernameWidget() {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(
          color: Color.fromRGBO(173, 183, 192, 1),
          fontWeight: FontWeight.bold),
          enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(173, 183, 192, 1)),
        ),
      ),
    );
  }

  Widget _passwordWidget() {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(
          color: Color.fromRGBO(173, 183, 192, 1),
          fontWeight: FontWeight.bold),
          enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(173, 183, 192, 1)),
        ),
      ),
    );
  }

  Widget _submitButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {},
        child: Stack(children: [
          Positioned(
            right: 20,
            child: SizedBox.fromSize(
              size: const Size.square(80.0),// button width and height
              child: const ClipOval(
                child: Material(
                  color: Color.fromRGBO(252, 228, 138, 1), // button color
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
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

  Widget _createAccountLabel(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(15),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RegisterPage())),
            child: const Text(
              'Register',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationThickness: 2),
            ),
          ),
          const InkWell(
            // onTap: (){},
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
}
