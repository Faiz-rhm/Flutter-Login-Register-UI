import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.rotate(
          angle: 32,
          child: Container(
            width: MediaQuery.of(context).size.width * 1.5,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(62, 193, 201, 1),
            ),
          ),
        ),
        Transform.rotate(
          angle: 6,
          alignment: Alignment.bottomLeft,
          child: Container(
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.height * 2,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(54, 79, 107, 1),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 170, horizontal: 80),
                    child: Wrap(
                      direction: Axis.horizontal, //Vertical || Horizontal
                      children: <Widget>[
                        Transform.rotate(
                          angle: 38,
                          child: const Text('Hello \nAgain!',
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              // height: 5.5
                            ))),
                      ],
                    ),
                  )
                ],
              )),
        ),
        Transform.rotate(
          angle: 1,
          alignment: Alignment.topRight,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(252, 82, 133, 1),
            ),
          ),
        ),
      ],
    );
  }
}
