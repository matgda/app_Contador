import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:  HomePage());
  }
}
class  extends StatefulWidget {
  const ({Key? key}) : super(key: key);

  @override
  State<> createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void decrement() {
    setState(() {
      count--;
    });
    print('Decrement');

    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print('Increment');

    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 10;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                isFull ?'Lotado' :'Pode entrar ',
                style: TextStyle(
                    fontSize: 26,
                    color: isFull ? Colors.red : Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 32),
              Text('$count',
                  style: TextStyle(
                    fontSize: 100,
                    color: isFull ? Colors.red : Colors.white,
                  )),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: isEmpty ? null : decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: isEmpty ? Colors.white.withOpacity(0.2) : Colors.white,
                        fixedSize: const Size(100, 100),
                        primary: Colors.black,
                        shape:  RoundedRectangleBorder(
                          borderRadius:  BorderRadius.circular(24),
                        )
                    ),
                    child: Text(
                      'Saiu',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  const  SizedBox(width: 15),
                  TextButton(
                    onPressed: isFull ? null : increment,
                    style: TextButton.styleFrom(
                        backgroundColor: isFull ? Colors.white.withOpacity(0.2) : Colors.white,
                        fixedSize: const Size(100, 100),
                        primary: Colors.black,
                        shape:  RoundedRectangleBorder(
                          borderRadius:  BorderRadius.circular(24),
                        )
                    ),
                    child: Text(
                      'Entrou',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
}





  }













