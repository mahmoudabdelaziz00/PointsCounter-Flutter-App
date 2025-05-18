import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    '0',
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
                    '0',
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
    );
  }
}
