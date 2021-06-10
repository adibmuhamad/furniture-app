import 'package:flutter/material.dart';
import 'package:furniture_app/theme.dart';

class CustomDialog extends StatefulWidget {
  final String title, descriptions, text;

  CustomDialog({required this.title, required this.descriptions, required this.text});

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context){
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              left: 20,
              top: 65,
              right: 20,
              bottom: 20
          ),
          margin: EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: blackColor,
                    offset: Offset(0,10),
                    blurRadius: 10
                ),
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Text(
                widget.title,
                style: blackTextStyle.copyWith(
                  fontSize: 20
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.descriptions,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center
              ),
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      widget.text,
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      )
                    )
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 45,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                child: Image.asset("assets/images/icon.png")
            ),
          ),
        ),
      ],
    );
  }
}
