import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Conteneur extends StatelessWidget {
   Conteneur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Container(
          height:100,
          padding: EdgeInsets.only(top:40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Abonnements', style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600
              ),
              ),
              SizedBox(width: 20),
              Text('Pour toi', style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w600
              ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    //color: Colors.red.withOpacity(0.5),
                    padding:  EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          '@delnasa_3',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '#belleJournee',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children:  [
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Salif_keita_Mofou',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                width: 80,
                //color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 80,
                      //color: Colors.blue,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Container(
                            child: CircleAvatar(
                                radius:30,
                                backgroundImage: AssetImage('assets/images/Abou.jpeg'),
                          ),
                            margin: EdgeInsets.only(bottom: 10),

                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      color: Colors.teal,
                    ),
                    Container(
                      height: 80,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 80,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 80,
                      color: Colors.purple,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}