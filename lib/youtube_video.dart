import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:progress_indicator/progress_indicator.dart';

class VideoWidget extends StatelessWidget{
  VideoWidget({super.key,required this.imagemain,required this.duration,required this.Avatarimg,required this.Title,required this.Views,required this.channelname,required this.uploadtime});
  late String imagemain;
  late String duration;
  late String Title;
  late String Avatarimg;
  late String channelname;
  late String Views;
  late String uploadtime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.32,

        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.24,

              child: Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(imagemain,fit: BoxFit.cover,),
                ),
                Positioned(
                  right: 20,
                  bottom: 20,
                  child: Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child: Center(
                      child: Text(
                        duration,
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  )
              ]),
            ),
            Container(
              child: Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 9),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(Avatarimg),
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5),
                          child:Column(
                            children:  [
                              Padding(
                                padding: EdgeInsets.only(left: 0, right: 90),
                                child: Text(Title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                   fontWeight: FontWeight.bold),
                                   ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Text(channelname,
                                      style: TextStyle(color:Colors.white70),
                                      ),
                                      Text("."),
                                      Text(Views,
                                      style: TextStyle(color: Colors.white70),
                                      ),
                                      Text("."),
                                      Text(uploadtime,
                                      style: TextStyle(color: Colors.white70),
                                            )
                                         ],
                                        ),
                                      )
                                    ],
                                   ),
                                  ),
                            ],
                          ),
                          Positioned(
                            right: 20,
                            top: 6,
                            child: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(Icons.more_vert_outlined,
                              color: Colors.white,
                              )),
                              )
                            ],
                           ),
                          )
                    ],
                  ),
                
              ),
            );
  }

}