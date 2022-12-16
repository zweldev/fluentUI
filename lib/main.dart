import 'package:fluent_ui/fluent_ui.dart';
import 'package:fluent_ui_test/view/autosuggestbox.dart';
import 'package:fluent_ui_test/view/buttons.dart';
import 'package:fluent_ui_test/view/checkbox.dart';
import 'package:fluent_ui_test/view/contentDialog.dart';
import 'package:fluent_ui_test/view/tooltip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      // home: ButtonsEXP(),
      // home: CheckBoxEXP(),
      // home: TextBox(),
      // home: ToolTipEXP(),
      // home: ContentDialogEXP(),
      home: AutoSuggestBoxEXP(),
    );
  }
}
