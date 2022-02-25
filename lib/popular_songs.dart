//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySongsPage extends StatefulWidget {
  const MySongsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MySongsPage> createState() => _MySongsPageState();
}

class _MySongsPageState extends State<MySongsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70.0,
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Popular songs',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.notification_important_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 410,
                right: 20,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.white.withOpacity(0.7),
                      size: 28,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.share_outlined,
                      color: Colors.white.withOpacity(0.7),
                      size: 28,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 350,
                    width: 600,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          splashColor: Colors.white.withOpacity(0.2),
                          child: Ink(
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(120),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'images/singing8.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        InkWell(
                          onTap: () {},
                          splashColor: Colors.white.withOpacity(0.2),
                          child: Ink(
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(70),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'images/singing7.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        InkWell(
                          onTap: () {},
                          splashColor: Colors.white.withOpacity(0.2),
                          child: Ink(
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(120),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'images/singing9.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Essence',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Tems',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 16, 24, 29),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white.withOpacity(0.5),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white.withOpacity(0.5),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.white.withOpacity(0.5),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stream,
              color: Colors.white.withOpacity(0.5),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
