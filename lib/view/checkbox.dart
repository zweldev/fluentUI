import 'package:fluent_ui/fluent_ui.dart';

class CheckBoxEXP extends StatefulWidget {
  const CheckBoxEXP({super.key});

  @override
  State<CheckBoxEXP> createState() => _CheckBoxEXPState();
}

TextEditingController con = TextEditingController();

class _CheckBoxEXPState extends State<CheckBoxEXP> {
  bool? check = false;
  bool disable = false;
  String texttoshow = '';
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.only(top: 0),
      header: Container(
        width: double.infinity,
        height: 50,
        color: Colors.blue,
        child: Center(
          child: Text(
            "CheckBox",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      content: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                ToggleSwitch(
                    checked: disable,
                    onChanged: (value) {
                      setState(() {
                        value = !value;
                      });
                    }),
                Checkbox(
                    checked: check,
                    onChanged: disable
                        ? null
                        : (value) {
                            setState(() {
                              check = (value == true
                                  ? true
                                  : value == false
                                      ? null
                                      : value == null
                                          ? false
                                          : true);
                            });
                          }),
                Container(
                    width: 300,
                    child: TextBox(
                        readOnly: false,
                        controller: con,
                        onChanged: (text) {
                          print(text);
                        },
                        style: TextStyle(
                          letterSpacing: 8,
                        ),
                        onEditingComplete: () {
                          texttoshow = con.text;
                          setState(() {});
                        },
                        placeholder: "Name",
                        expands: false,
                        header: "Enter Your Name")),
                Text(texttoshow)
              ],
            ),
          )),
    );
  }
}
