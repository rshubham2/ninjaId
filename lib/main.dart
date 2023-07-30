import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(
  home: Myapp(),
));

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}
int ninjaLevel=0;
class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID',
            style: GoogleFonts.rowdies(
              fontWeight: FontWeight.bold,
              color: const Color(0xffb4b8a7),
              letterSpacing: 2.0,
            ),
        ),
        backgroundColor: const Color(0xff2a231f),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add),
      ),
      body: Container(

        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             const Center(
               child: CircleAvatar(
                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/001/871/778/original/ninja-or-assasin-mascot-character-on-dark-background-for-esport-lcon-free-vector.jpg'),
                radius: 80.0,
                backgroundColor: Colors.grey,

            ),
             ),
           const Divider(
              height: 100.0,
              color: Colors.amberAccent,

            ),
            Text('Name:',
            style: GoogleFonts.lobster(
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 15.0,
            ),
            ),
            const SizedBox(height: 2,),
            Text('Shubham Rane',
              style: GoogleFonts.laila(
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 30),
            Text('Ninja Level:',
              style: GoogleFonts.lobster(
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 2,),
            Text('$ninjaLevel',
              style: GoogleFonts.laila(
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 30),


            Row(
              children: <Widget>[
               const Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                const SizedBox(width: 8),
                Text('shubhamrane190@gmail.com',
                  style: GoogleFonts.abel(
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                  fontSize: 20.0,
                ),
                ),
              ],
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                if(ninjaLevel>0)
                 { ninjaLevel=0;}
              });
            },
              child: const Text('reset'),

                ),


          ],
        ),

      ),
    );
  }
}
