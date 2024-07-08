import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_iti/core/styles/text_style.dart';
import 'package:movie_iti/core/utils/functions/routers.dart';

class appBar extends StatelessWidget {
  const appBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        children: [
          //const SizedBox(width: 10),
          const Padding(padding: EdgeInsets.only(left: 10)),
          GestureDetector(
            onTap: () {
              //pop
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 22,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyles.TextRowTitle,
                //textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
