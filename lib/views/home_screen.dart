import 'package:basketball/cubits/counter_cubit.dart';
import 'package:basketball/cubits/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {

      },
      builder: (context, state) {
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
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
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
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 1);
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
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 2);
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
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'MA', buttonNumber: 1);
                          setState(() {

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
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'RA', buttonNumber: 0);
                            setState(() {

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
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
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
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 1);
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
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 2);
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
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'MB', buttonNumber: 1);
                          setState(() {

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
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'RB', buttonNumber: 0);
                            setState(() {

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
              SizedBox(height: 50,),
              Container(
                width: 400,
                height: 2,
                color: Colors.black,
              ),
              SizedBox(height: 25,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                    minimumSize: Size(150, 50)
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'RAB', buttonNumber: 0);
                  setState(() {

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
        );
      },
    );
  }
}
