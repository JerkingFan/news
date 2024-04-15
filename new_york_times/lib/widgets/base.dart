import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text("News", style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.white,
                elevation: 5,
                shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
                        ),),
                onPressed: () {},
                
                child: const Column(
                  children: [
              
                    Text("Байден опять проспал", style: TextStyle(color: Colors.black87),),
                    Image(image: NetworkImage('https://www.sb.by/upload/iblock/41a/lhcp5b4am9is3jnndblgwntzjc6ja7wx.jpg'),
                                width: 200,
                                height: 200,),
                  
                    Text("Жил-был да не тужил", style: TextStyle(color: Colors.black87),)
              
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}