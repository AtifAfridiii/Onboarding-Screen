import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Page_View extends StatelessWidget {
  final String image,title,description,buttontext;
final Function() onPressed ;

   Page_View({super.key,required this.image,required this.title,required this.buttontext, required this.description,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.80,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image.asset(image,),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 71),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(title.toString(),style: const TextStyle(fontSize: 51,fontWeight: FontWeight.bold,color: Colors.deepPurple),) ,
                Gap(11),
                Text(description.toString(),style: const TextStyle(fontSize: 11,color: Colors.black54),) ,
              ],
             ),
           ),
           MaterialButton(
            minWidth: 201,
            onPressed:()=>onPressed(),
           color: Colors.deepOrange,
           child: Text(buttontext,style: TextStyle(color: Colors.white),),
            )
        ],
       
      ),
    );
  }
}