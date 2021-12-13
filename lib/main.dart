import 'package:flutter/material.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Welcome Screen", home: HomeState());
  }
}

class HomeState extends StatefulWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  int count = 0;
  void _increment() {
    setState(() {
      count += 1;
    });
  }

  void _reset_count() {
    setState(() {
      count = 0;
    });
  }

  Widget _bodyWidget() {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("count = " + count.toString()),
          ElevatedButton(onPressed: _increment, child: Text("Increment ")),
          ElevatedButton(
            onPressed: _reset_count,
            child: Text("Reset"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
          )
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
      ),
      body: Center(
        child: _bodyWidget(),
      ),
    );
  }
}
