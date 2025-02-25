import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}


class PointsCounter extends StatefulWidget {

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Points Counter',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '${teamAPoints}',
                      style: TextStyle(
                        fontSize: 100,
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.black,
                        minimumSize: Size(150, 50)
                      ),
                        onPressed: (){
                        setState(() {
                          teamAPoints++;
                        });
                        },
                        child: Text(
                          '+1 Point',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black
                          ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            minimumSize: Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints+=2;
                          });
                        },
                        child: Text(
                          '+2 Point',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.black,
                          minimumSize: Size(150, 50)
                      ),
                      onPressed: (){
                        setState(() {
                          teamAPoints--;
                        });
                      },
                      child: Text(
                        '-1 Point',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black,
                            minimumSize: Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints = 0;
                          });
                        },
                        child: Text(
                          'Reset',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    width: 80,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '${teamBPoints}',
                      style: TextStyle(
                        fontSize: 100,
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          minimumSize: Size(150, 50)
                      ),
                      onPressed: (){
                       setState(() {
                         teamBPoints++;
                       });
                      },
                      child: Text(
                        '+1 Point',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            minimumSize: Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamBPoints+=2;
                          });
                        },
                        child: Text(
                          '+2 Point',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.black,
                          minimumSize: Size(150, 50)
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints--;
                        });
                      },
                      child: Text(
                        '-1 Point',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.black,
                            minimumSize: Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamBPoints = 0 ;
                          });
                        },
                        child: Text(
                          'Reset ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.black,
                  minimumSize: Size(150, 50)
              ),
              onPressed: (){
                setState(() {
                  teamBPoints++ ;
                  teamAPoints++ ;
                });
              },
              child: Text(
                'Add 1 Point',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  minimumSize: Size(150, 50)
              ),
              onPressed: (){
                setState(() {
                  teamBPoints = 0;
                  teamAPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
