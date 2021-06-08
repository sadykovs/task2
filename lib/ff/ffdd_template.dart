import 'package:flutter/material.dart';

class FFDropDown extends StatefulWidget {
  const FFDropDown({
    @required this.options,
    @required this.onChanged,
    this.icon,
    this.width,
    this.height,
    this.fillColor,
    this.textStyle,
    this.elevation,
    this.borderWidth,
    this.borderRadius,
    this.borderColor,
    this.margin,
  });

  final List<String> options;
  final Function(String) onChanged;
  final Widget icon;
  final double width;
  final double height;
  final Color fillColor;
  final TextStyle textStyle;
  final double elevation;
  final double borderWidth;
  final double borderRadius;
  final Color borderColor;
  final EdgeInsetsGeometry margin;

  @override
  State<FFDropDown> createState() => _FFDropDownState();
}

class _FFDropDownState extends State<FFDropDown> {
  String dropDownValue;
  List<String> effectiveOptions;

  @override
  void initState() {
    effectiveOptions = widget.options.isEmpty ? ['[Option]'] : widget.options;
    dropDownValue = effectiveOptions.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final childWidget = DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 28),
        border: Border.all(
          color: widget.borderColor,
          width: widget.borderWidth,
        ),
        color: widget.fillColor,
      ),
      child: Padding(
        padding: widget.margin,
        child: DropdownButton<String>(
          value: dropDownValue,
          items: effectiveOptions
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      e,
                      style: widget.textStyle,
                    ),
                  ))
              .toList(),
          elevation: widget.elevation.toInt(),
          onChanged: (value) {
            dropDownValue = value;
            widget.onChanged(value);
          },
          icon: widget.icon,
          isExpanded: true,
          dropdownColor: widget.fillColor,
        ),
      ),
    );
    if (widget.height != null || widget.width != null) {
      return Container(
          width: widget.width, height: widget.height, child: childWidget);
    }
    return childWidget;
  }
}
