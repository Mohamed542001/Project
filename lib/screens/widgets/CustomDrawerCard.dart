import 'package:project/screens/widgets/AppColors.dart';
import 'package:project/screens/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class CustomDrawerCard extends StatefulWidget {
  const CustomDrawerCard(
      {
        Key? key,
        this.onTap,
        this.title,
        this.image,
        this.imageColor,
        required this.border,
      }
      ) : super(key: key);

  final Function()? onTap;
  final String? title;
  final String? image;
  final Color? imageColor;
  final bool border;

  @override
  State<CustomDrawerCard> createState() => _CustomDrawerCardState();
}

class _CustomDrawerCardState extends State<CustomDrawerCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: widget.border==true?Border(
            bottom: BorderSide(
              width: 1,
              color: AppColors.formBgColor,
            ),
          ):Border(
            bottom: BorderSide(
            color: AppColors.white,
            ),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
                '${widget.image}',
              color: widget.imageColor??AppColors.white,
              height: 50,
              width: 50,
            ),
            const SizedBox(
              width: 15,
            ),
            CustomText(
              title: widget.title,
              fontWeight: FontWeight.bold,
              size: 14,
            )
          ],
        ),
      ),
    );
  }
}
