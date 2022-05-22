import 'package:flutter/material.dart';
import 'package:naver_clone/screen/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5ed),
      body: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Color(0xfff4f6f8),
          body: Column(
            children: [
              TopBar(),
              IconButton(
                icon: Image.asset('asset/img/searchbar.png', fit: BoxFit.contain, height: 200,),
                iconSize: 400,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute<void>(builder: (BuildContext context) {
                    return Search();
                  }),);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(children:<Widget>[
//       Stack(children: <Widget>[
//         Back(),
//         TopBar(),
//       ],)
//     ],);
//   }
// }


class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Image.asset('asset/img/more.jpg', fit: BoxFit.contain, height: 52,),
            iconSize: 52,
            onPressed: () {},
          ),
          Spacer(flex: 1,),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Image.asset('asset/img/pay.jpg', fit: BoxFit.contain, height: 52, ),
            iconSize: 52,
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Image.asset('asset/img/alarm.png', fit: BoxFit.contain, height: 52,),
            iconSize: 52,
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Image.asset('asset/img/na.png', fit: BoxFit.contain, height: 52,),
            iconSize: 52,
            onPressed: () {},
          ),
          //Image.asset('asset/img/more.jpg', fit: BoxFit.contain, height: 44,),

      ],),
    );
  }
}

