import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';

class InputField extends StatefulWidget {
  final String title;
  final bool isPassword;
  final IconData prefIcon;
  final bool isPsEdit;
  final TextEditingController controller;

  const InputField({Key? key, required this.title, this.isPassword = false, required this.controller,required this.prefIcon, this.isPsEdit = false}) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose(){
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: TextStyle(
            color: kTextLightColor,
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(height: 10.0,),
          TextFormField(
            key: _formKey,
            controller: widget.controller,
            validator: (val) =>
              val!.isNotEmpty ? null : "Please enter your " + widget.title,
            decoration: InputDecoration(
              hintText: widget.title,
              prefixIcon: Icon(widget.prefIcon),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              /*suffix: widget.isPsEdit ? Container(
                height: 20.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: kButtonColorAccent,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Center(child: Text("Change", style: TextStyle(color: kButtonColor, fontWeight: FontWeight.w600),)),
              ) : null*/
            ),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700
            ),
            obscureText: widget.isPassword ? true : false,
            onChanged: (value){
              setState(() {
                widget.controller.value = TextEditingValue(
                  text: value,
                  selection: TextSelection.collapsed(offset: value.length)
                );
              });
            },
          )
        ],
      ),
    );
  }
}

