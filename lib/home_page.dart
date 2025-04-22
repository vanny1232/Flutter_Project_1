import 'package:flutter/material.dart';
import './util/emoticon_face.dart';
import './util/excercises_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Home'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Column(
                children: [
                  //greetings
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Hi vanny
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi , Vanny!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '21,Apr,2025',
                              style: TextStyle(
                                color: Colors.blue[200],
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          //Notification
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.notifications, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  // Searchbar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        Text(
                          'Seacrh',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),

                  //how do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How Do You Feel ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 25),

                  //4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😒'),
                          SizedBox(height: 8),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      //fine
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😄'),
                          SizedBox(height: 8),
                          Text('Fine', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😳'),
                          SizedBox(height: 8),
                          Text('Well', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      //excellent
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '🤭'),
                          SizedBox(height: 8),
                          Text(
                            'excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      //Excercises heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Excercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(height: 20),

                      //lisviwe of Excercises
                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(16),
                      //   ),
                      //   child: ListTile(
                      //     leading: Icon(Icons.favorite),
                      //     title: Text('Specking Skills  '),
                      //     subtitle: Text('15'),
                      //   ),
                      // ),,
                      Expanded(
                        child: ListView(
                          children: [
                            ExcercisesTitle(
                              iconColor: Colors.white,
                              icon: Icons.favorite,
                              nameExcercises: 'Speeking Skills',
                              numberOfExcercises: 12,
                              bgColor: Colors.pink,
                            ),
                            ExcercisesTitle(
                              iconColor: Colors.white,
                              icon: Icons.favorite,
                              nameExcercises: 'Speeking Skills',
                              numberOfExcercises: 12,
                              bgColor: const Color.fromARGB(255, 0, 0, 0),
                            ),
                            ExcercisesTitle(
                              iconColor: Colors.white,
                              icon: Icons.favorite,
                              nameExcercises: 'Speeking Skills',
                              numberOfExcercises: 12,
                              bgColor: const Color.fromARGB(255, 214, 53, 107),
                            ),
                            ExcercisesTitle(
                              iconColor: Colors.white,
                              icon: Icons.favorite,
                              nameExcercises: 'Speeking Skills',
                              numberOfExcercises: 12,
                              bgColor: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
