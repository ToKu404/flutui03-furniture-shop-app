import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop/constant/constant.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final String iconPath;
  final Function() onTap;
  final bool active;

  const ActionButton({
    Key key,
    this.title,
    this.iconPath,
    this.onTap,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          SvgPicture.asset(
            iconPath,
            color: active ? primaryColor : Colors.black87,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: active ? primaryColor : Colors.black87,
                    fontSize: 16),
              ),
              if (active)
                Positioned(
                    top: -3,
                    right: -12,
                    child: Container(
                      width: 14,
                      height: 14,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1)),
                      child: SvgPicture.asset(
                        "assets/icons/tick.svg",
                        color: Colors.white,
                        height: 5,
                      ),
                    ))
            ],
          )
        ],
      ),
    );
  }
}
