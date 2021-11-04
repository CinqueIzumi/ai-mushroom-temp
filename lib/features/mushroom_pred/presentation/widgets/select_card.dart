import 'package:ai_mushroom/core/utils/colors.dart';
import 'package:flutter/material.dart';

class SelectCard extends StatefulWidget {
  int _selectedIndex = 0;

  final int maxOptions;
  final String question;
  final Map<String, dynamic> answers;

  SelectCard({Key? key, required this.maxOptions, required this.question, required this.answers}) : super(key: key);

  @override
  _SelectCardState createState() => _SelectCardState();

  String get text => answers.values.elementAt(_selectedIndex);
}

class _SelectCardState extends State<SelectCard> {


  void _updateForward() {
    setState(() {
      if (widget._selectedIndex < widget.maxOptions - 1) {
        widget._selectedIndex++;
      }
    });
  }

  void _updateBackwards() {
    setState(() {
      if (widget._selectedIndex > 0) {
        widget._selectedIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),

      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _updateBackwards();
                  },
                  child: const Icon(Icons.arrow_left_rounded),
                  style: ElevatedButton.styleFrom(
                    primary: kColorButton,
                    shape: const CircleBorder(),
                  ),
                ),
                Column(
                  children: [
                    Text(widget.question, style: const TextStyle(fontWeight: FontWeight.w200),),
                    Text(widget.answers.keys.elementAt(widget._selectedIndex), style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    _updateForward();
                  },
                  child: const Icon(Icons.arrow_right_rounded),
                  style: ElevatedButton.styleFrom(
                    primary: kColorButton,
                    shape: const CircleBorder(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
