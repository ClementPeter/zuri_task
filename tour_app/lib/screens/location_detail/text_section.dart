import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  //static const double _hPad = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 4.0),
          child: Text(
            _title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 10.0, 40.0, 4.0),
          child: Text(_body),
        ),
      ],
    );
  }
}
