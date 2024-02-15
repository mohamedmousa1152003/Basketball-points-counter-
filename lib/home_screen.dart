import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? team1=0;

  int? team2=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        title: const Text("Points Counter " , style:  TextStyle(color: Colors.black , fontSize: 25 ,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text("Team 1" , style:  TextStyle( fontSize: 32 ,fontWeight: FontWeight.bold)),
                   Text("$team1", style:  TextStyle( fontSize: 150 )),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: (){
                      team1=team1!+1;
                      setState(() {
                      });
                    },
                      child: const Text("Add 1 point", style: TextStyle(fontSize: 25, color: Colors.black),),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: (){
                       team1=team1!+2;
                       setState(() {
                       });
                    },
                      child: const Text("Add 2 point", style: TextStyle(fontSize: 25, color: Colors.black),),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: (){
                      team1=team1!+3;
                      setState(() {
                      });
                    },
                      child: const Text("Add 3 point", style: TextStyle(fontSize: 25, color: Colors.black),),
                  ),

                ],
              ),
              const SizedBox(
                height: 400,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 2.0,
                  width: 20,
                ),
              ),
              Column(
                children: [
                  const Text("Team 2" , style:  TextStyle( fontSize: 32 ,fontWeight: FontWeight.bold)),
                   Text("$team2" , style:  TextStyle( fontSize: 150 )),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: (){
                       team2=team2!+1;
                       setState(() {
                       });
                    },
                    child: const Text("Add 1 point", style: TextStyle(fontSize: 25, color: Colors.black),),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: (){
                      team2=team2!+2;
                      setState(() {
                      });
                    },
                    child: const Text("Add 2 point", style: TextStyle(fontSize: 25, color: Colors.black),),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: (){
                      team2=team2!+3;
                      setState(() {
                      });
                    },
                    child: const Text("Add 3 point", style: TextStyle(fontSize: 25, color: Colors.black),),
                  ),

                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
            ),
            onPressed: (){
              team1=0;
              team2=0;
              setState(() {
              });
            },
              child: const Text("Reset" , style: TextStyle(fontSize: 25, color: Colors.black)), )
        ],
      ),
    );
  }
}