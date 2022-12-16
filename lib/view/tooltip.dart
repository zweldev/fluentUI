import 'package:fluent_ui/fluent_ui.dart';

class ToolTipEXP extends StatefulWidget {
  const ToolTipEXP({super.key});

  @override
  State<ToolTipEXP> createState() => _ToolTipEXPState();
}

class _ToolTipEXPState extends State<ToolTipEXP> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
        padding: EdgeInsets.only(top: 0),
        header: Container(
          child: Text(
            "ToolTip",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        content: Container(
          color: Colors.white,
          child: Center(
            child: Tooltip(
              style: TooltipThemeData(
                  decoration: BoxDecoration(color: Colors.grey)),
              message: "Hi I'm Maria",
              child: ToggleButton(
                  child: Text("Click"),
                  checked: val,
                  onChanged: (e) {
                    val = e;
                    setState(() {});
                  }),
            ),
          ),
        ));
  }
}
