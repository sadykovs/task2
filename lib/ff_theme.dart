import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:pedantic/pedantic.dart';

class FFTheme {
  static const Color primaryColor = Color(0xFF3474E0);
  static const Color secondaryColor = Color(0xFFEE8B60);
  static const Color tertiaryColor = Color(0xFFFFFFFF);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';

  static TextStyle get title1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  static TextStyle get title2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 22,
      );
  static TextStyle get title3 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF757575),
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF616161),
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF303030),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
        'Poppins',
        color: Color(0xFF424242),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override(
          {String fontFamily,
          Color color,
          double fontSize,
          FontWeight fontWeight,
          FontStyle fontStyle}) =>
      GoogleFonts.getFont(
        fontFamily,
        color: color ?? this.color,
        fontSize: fontSize ?? this.fontSize,
        fontWeight: fontWeight ?? this.fontWeight,
        fontStyle: fontStyle ?? this.fontStyle,
      );
}

class FFButtonOptions {
  const FFButtonOptions({
    this.textStyle,
    this.elevation,
    this.height,
    this.width,
    this.padding,
    this.color,
    this.disabledColor,
    this.disabledTextColor,
    this.splashColor,
    this.iconSize,
    this.iconColor,
    this.iconPadding,
    this.borderRadius,
    this.borderSide,
  });

  final TextStyle textStyle;
  final double elevation;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Color disabledColor;
  final Color disabledTextColor;
  final Color splashColor;
  final double iconSize;
  final Color iconColor;
  final EdgeInsetsGeometry iconPadding;
  final double borderRadius;
  final BorderSide borderSide;
}

class FFButtonWidget extends StatelessWidget {
  const FFButtonWidget({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.icon,
    this.iconData,
    @required this.options,
  }) : super(key: key);

  final String text;
  final Widget icon;
  final IconData iconData;
  final VoidCallback onPressed;
  final FFButtonOptions options;

  @override
  Widget build(BuildContext context) {
    final textWidget = AutoSizeText(
      text,
      style: options.textStyle,
      maxLines: 1,
    );
    if (icon != null || iconData != null) {
      return Container(
        height: options.height,
        width: options.width,
        child: RaisedButton.icon(
          icon: Padding(
            padding: options.iconPadding ?? EdgeInsets.zero,
            child: icon ??
                FaIcon(
                  iconData,
                  size: options.iconSize,
                  color: options.iconColor ?? options.textStyle.color,
                ),
          ),
          label: textWidget,
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(options.borderRadius),
            side: options.borderSide ?? BorderSide.none,
          ),
          color: options.color,
          colorBrightness: ThemeData.estimateBrightnessForColor(options.color),
          textColor: options.textStyle.color,
          disabledColor: options.disabledColor,
          disabledTextColor: options.disabledTextColor,
          elevation: options.elevation,
          splashColor: options.splashColor,
        ),
      );
    }

    return Container(
      height: options.height,
      width: options.width,
      child: RaisedButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(options.borderRadius ?? 28),
          side: options.borderSide ?? BorderSide.none,
        ),
        textColor: options.textStyle.color,
        color: options.color,
        colorBrightness: ThemeData.estimateBrightnessForColor(options.color),
        disabledColor: options.disabledColor,
        disabledTextColor: options.disabledTextColor,
        padding: options.padding,
        elevation: options.elevation,
        child: textWidget,
      ),
    );
  }
}

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
