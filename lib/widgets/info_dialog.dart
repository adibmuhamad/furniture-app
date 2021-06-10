import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/pages/ar_page.dart';
import 'package:furniture_app/theme.dart';
import 'package:furniture_app/widgets/page_indicator.dart';

class InfoDialog extends StatefulWidget {

  final String name;
  final String arUrl;

  InfoDialog(this.name, this.arUrl);

  @override
  _InfoDialogState createState() => _InfoDialogState();
}

int indicatorActive = 0;

class _InfoDialogState extends State<InfoDialog> {
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                height: 200,
                child:  PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:3,
                  onPageChanged: (pageId) {
                    setState(() {
                      indicatorActive = pageId;
                    });
                  },
                  itemBuilder: (ctx, id) {
                    return Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              info[id]['image'],
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                                info[id]['value'],
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
               ),
              Container(
                height: 11,
                child: PageIndicator(3),
              ),
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ARPage(widget.name, widget.arUrl))
                      );
                    },
                    child: Text(
                        (indicatorActive == 2) ? 'Next' : '',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                        )
                    )
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
