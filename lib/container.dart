import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerClass extends StatelessWidget {
    ContainerClass({required this.colour,this.cardChild,this.onPress});
    final Color colour;
    final Widget? cardChild;
    final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child:cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colour,
          ),
          
        ),
    );
  }
}