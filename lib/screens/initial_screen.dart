import 'package:flutter/material.dart';
import 'package:nossa_lista_de_desenhos/data/cartoon_inherited.dart';

//import '../components/cartoon.dart';
import 'form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Cartoon List'),
        backgroundColor: Colors.red,
        leading: Container(),
      ),
      body: ListView(
        children: CartoonInherited.of(context).cartoonList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(cartoonContext: context,),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
