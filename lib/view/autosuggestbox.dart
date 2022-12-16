import 'package:fluent_ui/fluent_ui.dart';

class AutoSuggestBoxEXP extends StatefulWidget {
  const AutoSuggestBoxEXP({super.key});

  @override
  State<AutoSuggestBoxEXP> createState() => _AutoSuggestBoxEXPState();
}

class _AutoSuggestBoxEXPState extends State<AutoSuggestBoxEXP> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.only(top: 0),
      header: Container(
        width: double.infinity,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Auto Suggest Box",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      content: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
