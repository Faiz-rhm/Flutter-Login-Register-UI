import 'package:flutter/material.dart';

class RegisterContainer extends StatefulWidget {
  const RegisterContainer({Key? key}) : super(key: key);

  @override
  _RegisterContainerState createState() => _RegisterContainerState();
}

class _RegisterContainerState extends State<RegisterContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.rotate(
          angle: 38,
          // alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width * 2.8,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(62, 193, 201, 1),
            ),
          ),
        ),
        Transform.rotate(
          angle: 12,
          alignment: Alignment.bottomLeft,
          child: Container(
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.height * 0.6,
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
            width: MediaQuery.of(context).size.width * 0.2,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(252, 82, 133, 1),
            ),
          ),
        ),
      ],
    );
  }
}
