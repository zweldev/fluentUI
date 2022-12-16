import 'package:fluent_ui/fluent_ui.dart';

class ContentDialogEXP extends StatefulWidget {
  const ContentDialogEXP({super.key});

  @override
  State<ContentDialogEXP> createState() => _ContentDialogEXPState();
}

class _ContentDialogEXPState extends State<ContentDialogEXP> {
  final expanderKey = GlobalKey<ExpanderState>();
  bool turn = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleSwitch(
                checked: turn,
                onChanged: (e) {
                  turn = e;

                  setState(() {});
                }),
            Container(
              width: 250,
              child: Expander(
                key: expanderKey,
                header: Text("Choose your age"),
                content: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RadioButton(
                            content: Text("6 - 12"),
                            checked: false,
                            onChanged: (e) {}),
                        RadioButton(
                            content: Text("18 - 25"),
                            checked: true,
                            onChanged: (e) {})
                      ],
                    )
                  ],
                ),
                onStateChanged: (open) {
      
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
