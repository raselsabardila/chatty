import 'package:chatty/styles/Style.dart';
import 'package:flutter/material.dart';

class MessageLeft extends StatelessWidget {
  String _urlImage, _message, _time;

  MessageLeft(this._urlImage, this._message, this._time);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: NetworkImage(this._urlImage), fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
                color: Color(0xff393e46), borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this._message,
                  style: titleTextStyle.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  this._time,
                  style: subtitleTextStyle.copyWith(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
