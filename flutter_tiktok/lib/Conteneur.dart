import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostContent extends StatelessWidget {
  const PostContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:100,
          padding: const EdgeInsets.only(top:40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
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



                      ],
                    ),
                  )),
              Container(
                width: 80,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 80,
                      color: Colors.blue,
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