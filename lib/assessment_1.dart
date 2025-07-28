import 'package:flutter/material.dart';
class assessment1 extends StatelessWidget {
  const assessment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App",
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, World!',
              style: TextStyle(
                fontSize: 28,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15,),
            Text("Welcome to Flutter!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),

            SizedBox(height: 15,),
            Image.network("https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png",
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Button Pressed!"))
              );
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text("Press me"))


          ],
        ),
      ),
    );
  }
}
//assessment done
