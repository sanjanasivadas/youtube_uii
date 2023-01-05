import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_uii/youtube_appbar.dart';
import 'package:youtube_uii/youtube_category.dart';
import 'package:youtube_uii/youtube_video.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    //darkTheme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
   theme: ThemeData.dark(),
    home: YouTubeui(),
  ));
}

class YouTubeui extends StatelessWidget{
  const YouTubeui({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    bottomNavigationBar:BottomNavigationBar(
     // backgroundColor: Colors.grey.shade800,
      selectedItemColor: Colors.white54,
      unselectedItemColor: Colors.white54,
      showUnselectedLabels: true,
      currentIndex: 1,
          items: const[
            BottomNavigationBarItem(
            icon:Icon(Icons.home,color: Colors.white54,),
            label: "Home",
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined,color:Colors.white54),
            label: "Explore",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined,color:Colors.white54,size: 35,),
            label: "Add",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined,color: Colors.white54,),
              label: "Subscription",
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined,color: Colors.white54,),
              label:"Library",
              ),
          ]
      ),
     body: CustomScrollView(
      physics:  BouncingScrollPhysics(),
      slivers: [ 
        Appbar(),
         SliverList(
         delegate: SliverChildListDelegate([
          CategoryWidget(),
          SizedBox(
            height: 10,
          ),
          VideoWidget(
            imagemain: "https://images.unsplash.com/photo-1556911261-6bd341186b2f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
             duration: "5:00",
              Title: "Cooking Tutorial",
               Avatarimg: "https://images.unsplash.com/photo-1490645935967-10de6ba17061?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=853&q=80",
                channelname: "Foodvlogs",
                 Views: "5k views",
                  uploadtime: "2 mins ago"),
                  VideoWidget(
                    imagemain: "https://images.unsplash.com/photo-1505932794465-147d1f1b2c97?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                     duration: "10:00",
                      Title: "Haldi shots",
                       Avatarimg: "https://images.unsplash.com/photo-1507504031003-b417219a0fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                        channelname: "Wedding Co",
                         Views: "10k views",
                          uploadtime: "2 hours ago"),
                          VideoWidget(
                            imagemain: "https://images.unsplash.com/photo-1610562269919-86791081ad29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                             duration: "7:00",
                              Title: "Yoga Pose",
                               Avatarimg: "https://images.unsplash.com/photo-1577344718665-3e7c0c1ecf6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
                                channelname: "Health n Fitness",
                                 Views: "100 views",
                                  uploadtime: "1 sec ago"),
                                  VideoWidget(
                                    imagemain: "https://images.unsplash.com/photo-1616410011236-7a42121dd981?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
                                     duration: "3:56",
                                      Title: "Mobile Review",
                                       Avatarimg: "https://images.unsplash.com/photo-1560209617-059c0bd661ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80",
                                        channelname: "TECH WORLD",
                                         Views: "300 views",
                                          uploadtime: "5 secs ago")
               ],
              ),
             )
           ]
         )
       );
     }
  }