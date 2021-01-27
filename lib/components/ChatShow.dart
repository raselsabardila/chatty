import 'package:chatty/pages/DetailChat.dart';
import 'package:chatty/styles/Style.dart';
import 'package:flutter/material.dart';

class ChatShow extends StatelessWidget {
  String _imgUrl;
  String _name;
  String _text;
  String _time;
  bool _status;

  ChatShow(this._imgUrl, this._name, this._text, this._time, this._status);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailChat();
        }));
      },
      splashColor: Colors.grey,
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Row(
          children: <Widget>[
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(this._imgUrl), fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this._name, style: titleTextStyle),
                  Text(this._text,
                      style: subtitleTextStyle.copyWith(
                          color: (this._status) ? greyColor : blackColor))
                ],
              ),
            ),
            Spacer(),
            Text(
              this._time,
              style: subtitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
