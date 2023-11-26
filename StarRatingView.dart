import 'package:flutter/material.dart';

class StarRatingView extends StatefulWidget {
  Function(String) onclickevent;
  StarRatingView(this.onclickevent, {super.key});



  @override
  State<StarRatingView> createState() => _StarRatingViewState();
}

class _StarRatingViewState extends State<StarRatingView> {
  int index = 0;
  bool colored=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
        
          child: Expanded(
            child: Icon(colored?Icons.star:Icons.star_border
            
            ),
            
            ),

          onTap: () {
            index =1;
            
            widget.onclickevent.call(index.toString());

            // ImageIcon(
            //   AssetImage('assets/Images/StarE.png'),
              
            // );
            
             setState(() {
              colored=!colored;
            });
           
           
          },
          
        ),
        InkWell(
          onTap: () {
              index =2;
            widget.onclickevent.call(index.toString());
            setState(() {
              colored=!colored;
            });
          },
          child: Expanded(
            child: Icon(colored?Icons.star:Icons.star_border
            
            ),
            
            ),
        ),
        InkWell(
          onTap: () {
              index =3;
            widget.onclickevent.call(index.toString());
            setState(() {
              colored=!colored;
            });
          },
          child: Expanded(
            child: Icon(colored?Icons.star:Icons.star_border
            
            ),
            
            ),
        ),

        InkWell(
          onTap: () {
              index =4;
            widget.onclickevent.call(index.toString());
            setState(() {
              colored=!colored;
            });
          },
          child: Expanded(
            child: Icon(colored?Icons.star:Icons.star_border
            
            ),
            
            ),
        ),

        InkWell(
          onTap: () {
              index =5;
            widget.onclickevent.call(index.toString());
            setState(() {
              colored=!colored;
            });
          },
          child: Expanded(
            child: Icon(colored?Icons.star:Icons.star_border
            
            ),
            
            ),
        ),

      ],
    );
  }
}