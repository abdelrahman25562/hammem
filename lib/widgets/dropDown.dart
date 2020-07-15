import 'package:flutter/material.dart';

class DropDownFormFieldWidget extends StatefulWidget {
  final String hintText;
  final Function onChanged;
  final List<String> listElements;

  DropDownFormFieldWidget({
    this.hintText,
    this.onChanged,
    this.listElements,
  });

  @override
  _DropDownFormFieldWidgetState createState() =>
      _DropDownFormFieldWidgetState();
}

class _DropDownFormFieldWidgetState extends State<DropDownFormFieldWidget> {
  String currentValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            right: 15.0,
            left: 15.0,
          ),
          child: FormField<String>(
            builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  filled: true,
                  fillColor: Colors.black12,
                  errorStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16.0,
                  ),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(75),
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(75),
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      40.0,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent
                    )
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: currentValue,
                    isDense: true,
                    onChanged: widget.onChanged,
                    isExpanded: false,
                    hint: Text(
                      widget.hintText,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    iconDisabledColor: Colors.grey,
                    iconEnabledColor: Colors.grey,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    items: widget.listElements.map(
                          (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2.5,
                                ),
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              Divider(
                                color: Colors.grey,
                                height: 5.0,
                                indent: 0.0,
                              ),
                            ],
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}