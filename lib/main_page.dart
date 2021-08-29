import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<Map<String, dynamic>> list = [
  {
    "name": "Laurent",
    "last_message": "How about meeting tommorrow?",
    "time": "20:18",
    "image": "assets/foto1.png"
  },
  {
    "name": "Tracy",
    "last_message": "I love that idea, it's great!",
    "time": "19:22",
    "image": "assets/foto2.png"
  },
  {
    "name": "Claire",
    "last_message": "I wasn't aware of that. Let me check",
    "time": "14:34",
    "image": "assets/foto3.png"
  },
  {
    "name": "Joe",
    "last_message": "Flutter just release 1.0 officially. Should I go for it?",
    "time": "11:05",
    "image": "assets/foto4.png"
  },
  {
    "name": "Mark",
    "last_message": "It totally makes sens to get some extra day-off.",
    "time": "09:46",
    "image": "assets/foto5.png"
  },
  {
    "name": "Williams",
    "last_message": "It has been re-scheduled to next Saturday 7:30pm.",
    "time": "08:15",
    "image": "assets/foto6.png"
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Messages',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.symmetric(horizontal: BorderSide(color: Colors.grey, width: 0.1))
                ),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        list[index]["image"],
                        width: 50,
                      ),
                      SizedBox(width: 5,),
                      Flexible(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                Text(
                                  list[index]["name"],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  list[index]["time"],
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 2),
                            Text(
                              list[index]["last_message"],
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 40,),
                      Container(
                        child: Opacity(
                          opacity: 0.5,
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
