import 'package:flutter/material.dart';
import 'package:naver_clone/screen/home_screen.dart';
import 'package:naver_clone/screen/result_screen.dart';

class Search extends StatelessWidget {
  TextEditingController textcon = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              children: <Widget>[
                Flexible(
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        icon: Image.asset(
                          'asset/img/arrow.jpg',
                          fit: BoxFit.contain,
                          height: 60,
                        ),
                        iconSize: 60,
                        onPressed: () {
                          var push = Navigator.push(context,
                              MaterialPageRoute<void>(builder: (BuildContext context) {
                            return HomeScreen();
                          }),
                          );
                        },
                      ),
                      Flexible(
                        child: Container(
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            controller: textcon,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '검색어 또는 URL 입력',
                                hintStyle: TextStyle(color: Colors.grey[300])),
                            cursorColor: Colors.blue,
                          ),
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        icon: Image.asset(
                          'asset/img/search.jpg',
                          fit: BoxFit.contain,
                          height: 60,
                        ),
                        iconSize: 60,
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute<void>(builder: (BuildContext context) {
                              return Result();
                            }),);
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.green,
                  thickness: 1,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:
                        Text('최근 검색어'),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                      Container(
                        child: Text('전체 삭제'),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),

              ],),
            ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('asset/img/s_search.jpg', height: 40,),
                      Text('검색어'),
                      Spacer(flex: 1,),
                      Text('05.23'),
                      Image.asset('asset/img/cross.jpg', height: 40,),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('asset/img/s_search.jpg', height: 40,),
                      Text('검색어2'),
                      Spacer(flex: 1,),
                      Text('05.23'),
                      Image.asset('asset/img/cross.jpg', height: 40,),
                    ],
                  ),
                )
          ]
          ),
        ),
      ),
      ),
    );
  }
}
