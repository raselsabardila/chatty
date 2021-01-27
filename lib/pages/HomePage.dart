import 'package:chatty/components/ChatShow.dart';
import 'package:chatty/styles/Style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: SafeArea(
          child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: blueColor,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.7,
                    color: blueColor,
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/profile.png"),
                          width: 100,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Rachel Sabardila",
                                style: profileName,
                              ),
                              Text(
                                "Web Development",
                                style: jobName,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Wrap(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(30),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 2.7),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Friends",
                              style: titleTextStyle,
                            ),
                            ChatShow(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdqn__dh721ZfVn2SRw6pugqdBsRKiZ1Ytng&usqp=CAU",
                                "John Wick",
                                "lorem ipsum dolor sit amet.....",
                                "Now",
                                false),
                            ChatShow(
                                "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YXZhdGFyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                "Ini Siapa",
                                "lorem ipsum dolor sit amet.....",
                                "20:01",
                                true),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Groups",
                              style: titleTextStyle,
                            ),
                            ChatShow(
                                "https://images.unsplash.com/photo-1534423861386-85a16f5d13fd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2FtZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                "Group Warnet",
                                "lorem ipsum dolor sit amet.....",
                                "10:09",
                                false),
                            ChatShow(
                                "https://images.unsplash.com/photo-1561892699-a132d015e9c6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGdhbWV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                "Sulap",
                                "lorem ipsum dolor sit amet.....",
                                "20:01",
                                true),
                            ChatShow(
                                "https://images.unsplash.com/photo-1588072432836-e10032774350?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80",
                                "Sekolah",
                                "lorem ipsum dolor sit amet.....",
                                "02:01",
                                true),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
        ),
      )),
    );
  }
}
