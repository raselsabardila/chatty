import 'package:chatty/styles/Style.dart';
import 'package:flutter/material.dart';

class MessageRight extends StatelessWidget {
  String _urlImage, _message, _time;

  MessageRight(this._urlImage, this._message, this._time);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
                color: Color(0xffd65a31), borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: NetworkImage(this._urlImage), fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}
