import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class ButtonsEXP extends StatefulWidget {
  const ButtonsEXP({super.key});

  @override
  State<ButtonsEXP> createState() => _ButtonsEXPState();
}

class _ButtonsEXPState extends State<ButtonsEXP> {
  bool choke = true;
  int? num;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.only(top: 0),
      header: AppBar(
        title: Text("RadioButton"),
        leading: ToggleSwitch(
            checked: choke,
            onChanged: (e) {
              choke = e;

              print(e);
              setState(() {});
            }),
      ),
      content: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              3,
              (index) => RadioButton(
                  content: Text("Text $index"),
                  checked: choke ? num == index : false, // false
                  // checked: false,
                  onChanged: (e) {
                    // true
                    if (e) {
                      setState(() {
                        num = index;
                      });
                    }
                  })),
        ),
      ),
    );
  }
}
