import 'package:chatty/components/MessageLeft.dart';
import 'package:chatty/components/MessageRight.dart';
import 'package:chatty/styles/Style.dart';
import 'package:flutter/material.dart';

class DetailChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: null)
            ],
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            elevation: 4,
            backgroundColor: Color(0xff393e46),
            toolbarHeight: 70,
            title: Row(
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1534423861386-85a16f5d13fd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2FtZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Group Warnet",
                      style: titleTextStyle.copyWith(
                          color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 3),
                    Text("12.321 Members",
                        style: subtitleTextStyle.copyWith(
                            color: Colors.white.withOpacity(0.5)))
                  ],
                ),
              ],
            )),
        body: SingleChildScrollView(
            child: Container(
          width: MediaQuery.of(context).size.width,
          color: blueColor,
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                MessageLeft(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGF2YXRhcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=700&q=60",
                    "How are you guys?",
                    "20:09"),
                MessageLeft(
                    "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzZ8fGF2YXRhcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
                    "Im fine dude thanks for your attention.",
                    "20:10"),
                MessageRight(
                    "https://images.unsplash.com/photo-1601455763557-db1bea8a9a5a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fGF2YXRhcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
                    "Of course fine dude, how about you?",
                    "20:13"),
                MessageLeft(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGF2YXRhcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=700&q=60",
                    "that great guys:)",
                    "20:15"),
                MessageLeft(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGF2YXRhcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=700&q=60",
                    "How are you guys?",
                    "20:09"),
                MessageLeft(
                    "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzZ8fGF2YXRhcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
                    "Im fine dude thanks for your attention.",
                    "20:10"),
                MessageRight(
                    "https://images.unsplash.com/photo-1601455763557-db1bea8a9a5a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fGF2YXRhcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
                    "Of course fine dude, how about you?",
                    "20:13"),
                MessageLeft(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGF2YXRhcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=700&q=60",
                    "that great guys:)",
                    "20:15"),
              ],
            ),
          ),
        )),
        floatingActionButton: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10,
            right: 10,
            left: 20
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xff393e46),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(padding: EdgeInsets.only(right: 10),child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration.collapsed(
                    fillColor: Colors.white,
                    hintText: 'Type message..',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),)
              ),
              Container(
                width: 40,
                height: 40,
                child: IconButton(icon: Icon(Icons.send, color: Colors.white, size: 18,), onPressed: null),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xffd65a31),
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      )),
    );
  }
}