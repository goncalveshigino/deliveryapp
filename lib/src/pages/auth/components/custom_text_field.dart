
import 'package:deliveryapp/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter> inputFormatter;

  const CustomTextField({
    Key key,
    @required this.icon,
    @required this.label,
    this.isSecret = false,
    this.inputFormatter
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();

    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextFormField(
        obscureText: isObscure,
        inputFormatters: widget.inputFormatter,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon, color: MyColors.primaryColor,),
            suffixIcon: widget.isSecret
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                  )
                : null,
            labelText: widget.label,
            labelStyle: TextStyle(
              color: MyColors.primaryColorDark,
            ),
            isDense: true,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15)
            ),
      ),
    );
  }
}
