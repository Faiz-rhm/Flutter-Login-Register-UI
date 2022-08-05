import 'package:flutter/material.dart';

class RegisterContainer extends StatelessWidget {
  const RegisterContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Transform.rotate(
          angle: 38,
          // alignment: Alignment.bottomCenter,
          child: Container(
            width: width * 2.8,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(62, 193, 201, 1),
            ),
          ),
        ),
        Transform.rotate(
          angle: 12,
          alignment: Alignment.bottomLeft,
          child: Container(
            width: width * 2,
            height: height * 0.6,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(54, 79, 107, 1),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 290, horizontal: 190),
                  child: Wrap(
                    direction: Axis.horizontal, //Vertical || Horizontal
                    children: <Widget>[
                      Transform.rotate(
                        angle: 32,
                        child: const Text('Create \nAccount!',
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
          angle: 13,
          alignment: Alignment.topRight,
          child: Container(
            width: width * 0.2,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(252, 82, 133, 1),
            ),
          ),
        ),
      ],
    );
  }
}
