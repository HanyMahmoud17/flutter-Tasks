import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black26,
      //   leading: const Icon(
      //     Icons.arrow_back,
      //   ),
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.only(right: 20),
      //       child: Icon(
      //         Icons.favorite,
      //         color: Color.fromARGB(255, 247, 243, 245),
      //         size: 24.0,
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.only(right: 20),
      //       child: Icon(
      //         Icons.list,
      //         color: Color.fromARGB(255, 247, 243, 245),
      //         size: 24.0,
      //       ),
      //     ),
      //   ],
      // ),
      backgroundColor: Color.fromARGB(255, 105, 124, 130),
      body: const Center(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Expanded(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/hany.jpg'),
                  ),
                ),
              ),
              SizedBox(
                // width: 340,
                child: Text(
                  "Hany Mahmoud",
                  style: TextStyle(
                    fontFamily: "popions",
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  "Front End Developer",
                  style: TextStyle(
                    fontFamily: "popions",
                    fontSize: 19,
                    color: Color.fromARGB(255, 208, 182, 182),
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Creat great projects",
                  style: TextStyle(
                    fontFamily: "popions",
                    fontSize: 15,
                    color: Color.fromARGB(255, 178, 143, 143),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  "@hanymah.com",
                  style: TextStyle(
                    fontFamily: "popions",
                    fontSize: 10,
                    color: Color.fromARGB(255, 178, 143, 143),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            size: 40,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(FontAwesomeIcons.facebook,
                              size: 40, color: Colors.blue),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            FontAwesomeIcons.linkedin,
                            size: 40,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Divider(
                  color: Color.fromARGB(255, 145, 132, 132),
                  thickness: 2,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Icon(
                              FontAwesomeIcons.basketball,
                              size: 50,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            "100k",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: "popions",
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: "popions",
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, 0.493),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Icon(
                              FontAwesomeIcons.behance,
                              size: 50,
                              color: Color.fromARGB(255, 245, 247, 249),
                            ),
                          ),
                          Text(
                            "100k",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: "popions",
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: "popions",
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, 0.493),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
