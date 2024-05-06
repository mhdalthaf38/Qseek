import 'package:flutter/material.dart';
import 'package:mohammed_s_application1/theme/app_decoration.dart';

class ItemsItemWidget extends StatelessWidget {
  const ItemsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            height: 71,
            width: 69,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12,
              top: 15,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "No Recent Service",
                  style: TextStyle(),
                ),
                SizedBox(height: 4),
                Text(
                  "",
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
