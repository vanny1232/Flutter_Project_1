import 'package:flutter/material.dart';

class ExcercisesTitle extends StatelessWidget {
  final icon;
  final iconColor;
  final bgColor;
  final String nameExcercises;
  final int numberOfExcercises;
  const ExcercisesTitle({
    required this.iconColor,
    required this.bgColor,
    required this.icon,
    required this.nameExcercises,
    required this.numberOfExcercises,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: bgColor,
                    child: Icon(icon, color: iconColor),
                  ),
                ),

                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //title
                    Text(
                      nameExcercises,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //subtitle
                    Text(
                      numberOfExcercises.toString() + ' Excercises',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
