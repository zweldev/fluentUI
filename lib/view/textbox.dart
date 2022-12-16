import 'package:fluent_ui/fluent_ui.dart';

class TextBoxEXP extends StatefulWidget {
  const TextBoxEXP({super.key});

  @override
  State<TextBoxEXP> createState() => _TextBoxEXPState();
}

class _TextBoxEXPState extends State<TextBoxEXP> {
  List<String> cars = ["Audi", "Mercedes", "Toyota", "Suzuki"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: ScaffoldPage(
        header: Container(
          child: Text(
            "AutoSuggestBox",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        content: Container(
          color: Colors.white,
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              child: AutoSuggestBox(
                  onSelected: (value) {
                    setState(() {});
                  },
                  items: cars.map((car) {
                    return AutoSuggestBoxItem(value: car, label: car);
                  }).toList()),
            ),
          ),
        ),
      ),
    );
  }
}
