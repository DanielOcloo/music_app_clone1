//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'artists.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10),
          child: InkWell(
            onTap: () {},
            splashColor: Colors.white.withOpacity(0.2),
            child: Ink(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('images/youngblackwoman.jpg'),
                ),
              ),
            ),
          ),
        ),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Home',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10),
                child: Text(
                  'Hello Nisha,',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Text(
                  'What do you  want to hear today?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white.withOpacity(0.25),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search today...',
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
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
                      'Popular artists',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 190,
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 250,
                  width: 600,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          const Positioned(
                            bottom: 55,
                            child: Text(
                              'Tems',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            child: Text(
                              'Pop/RnB/Afrobeats',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MyArtistsPage(title: 'Artists'),
                                ),
                              );
                            },
                            splashColor: Colors.white.withOpacity(0.2),
                            child: Ink(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
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
                            height: 12,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Stack(
                        children: <Widget>[
                          const Positioned(
                            bottom: 55,
                            child: Text(
                              'J. Cole',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            child: Text(
                              'Hip Hop/Rap',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            splashColor: Colors.white.withOpacity(0.2),
                            child: Ink(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'images/singing4.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Stack(
                        children: <Widget>[
                          const Positioned(
                            bottom: 55,
                            child: Text(
                              'Mimi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            child: Text(
                              'Pop/Rnb/Hip Hop',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            splashColor: Colors.white.withOpacity(0.2),
                            child: Ink(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'images/singing5.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    const Text(
                      'Recently played',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 180,
                    ),
                    Text(
                      'See all',
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
                                    'images/singing6.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              const Text(
                                'Loose myself',
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
                                  'Anne Marie        ',
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
                                    'images/singing2.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              const Text(
                                'Acinteger             ',
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
                                  'Cameron Williamson',
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
