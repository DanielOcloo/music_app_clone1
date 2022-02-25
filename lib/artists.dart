//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'popular_songs.dart';

class MyArtistsPage extends StatefulWidget {
  const MyArtistsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyArtistsPage> createState() => _MyArtistsPageState();
}

class _MyArtistsPageState extends State<MyArtistsPage> {
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
            'Artists',
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
                top: 270,
                right: 30,
                child: Container(
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        const Color.fromARGB(255, 87, 87, 87).withOpacity(0.9),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 225,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        image: const DecorationImage(
                          image: AssetImage(
                            'images/singing3.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Pop/RnB/Afrobeats',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Tems',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
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
                          Icons.download,
                          color: Colors.white.withOpacity(0.7),
                          size: 28,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white.withOpacity(0.7),
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        const Text(
                          'Popular songs',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 190,
                        ),
                        Text(
                          'Play all',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(
                      height: 100,
                      width: 400,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            right: 0,
                            top: 30,
                            child: Icon(
                              Icons.more_horiz,
                              size: 32,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const MySongsPage(
                                          title: 'Popular songs'),
                                    ),
                                  );
                                },
                                splashColor: Colors.white.withOpacity(0.2),
                                child: Ink(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
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
                                width: 20,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Text(
                                    'Essence         ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Wizkid & Tems',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(
                      height: 100,
                      width: 400,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            right: 0,
                            top: 30,
                            child: Icon(
                              Icons.more_horiz,
                              size: 32,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                splashColor: Colors.white.withOpacity(0.2),
                                child: Ink(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
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
                                width: 20,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Text(
                                    'Crazy Tings',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Tems              ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(
                      height: 100,
                      width: 400,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            right: 0,
                            top: 30,
                            child: Icon(
                              Icons.more_horiz,
                              size: 32,
                              color: Colors.white.withOpacity(0.75),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                splashColor: Colors.white.withOpacity(0.2),
                                child: Ink(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'images/singing9.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Text(
                                    'Fountains   ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Drake ft. Tems',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
