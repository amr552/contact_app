

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessangerScreen  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0.0, // that to remove the different shape between the AppBar and body
       titleSpacing: 20.0,//that is for match the AppBar with body
       title: Row(
         children: [
           CircleAvatar( // that is a class create the circular shap
             radius: 19.0, // that is for the yaricapi
             backgroundImage: NetworkImage('https://miro.medium.com/max/1400/0*O_Sc_u4mcPC0WBG0',),

           ),
           SizedBox(width: 20.0,),
           Text(
             'Chats',
             style: TextStyle(color: Colors.black,),
           )
         ],
       ),
       actions: [
         IconButton( //icon button for make the icon has a extra feature with onpressed
             onPressed: (){},
             icon:CircleAvatar(
               radius: 15.0,
               backgroundColor: Colors.blue,
               child: Icon(Icons.camera_alt,
                 size: 15.0,
                 color: Colors.white,),
             )),
         IconButton(onPressed: (){},
             icon:CircleAvatar(
               radius: 15.0,
               backgroundColor: Colors.blue,
               child: Icon(Icons.edit,
                 size: 15.0,
                 color: Colors.white,),
             )),
       ],
     ),
     body: Padding( // here we did padding to all widges from the corner
       padding: const EdgeInsets.all(20.0),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               decoration: BoxDecoration( // that is to make the shape around the search widget
                 borderRadius: BorderRadius.circular(5.0,),
                 color: Colors.grey[300],
               ),
               padding: EdgeInsets.all(5.0),
               child: Row(
                 children: [
                   Icon(Icons.search,),
                   SizedBox(width: 15.0,),
                   Text('Search',),
                 ],
               ),
             ), // search bar
             SizedBox(height: 5.0,),
            Container(
              height: 110.0,
              child: ListView.separated(  // beacuse they direct behind each other instead of ListView.builder we will use
                shrinkWrap: true, //
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => builStoryItem(),
                  separatorBuilder: (context,index) => SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 5,
              ),
            ) ,
             SizedBox(height: 20.0,),
             ListView.separated(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
                 itemBuilder:(context, index) =>buildChatItem()  ,
                 separatorBuilder:(context,index) => SizedBox(height: 20.0,),
                 itemCount: 15,
             ),
           ],
         ),
       ),
     ),
   );
  }

  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('http://www.internationalist.org/palestinianboyvstank-large.jpg',),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
          width: 20.0),
      Expanded( // here the column have to be extended to did not happen the problem again
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' amr naguib  ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 5.0,),
            Row(
              children: [
                Expanded(
                  child:
                  Text(
                    'Hello my name is amr , i would like to recognize you please and ask you some questions ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0), // because symmetric is from right and left
                  child:
                  Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ), //that is for point of online
                Text('02:00 pm',),
              ],
            ),

          ],
        ),
        // because of the first Text maybe long so we have to expande it

      ),

    ],
  );
  Widget builStoryItem() =>  Container( //here we did container to control the text down of images by specific wisth
    width: 60.0,// that is to make the text up each other
    child: Column(
      children: [
        //   SizedBox(height: 15.0,),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://i0.wp.com/www.middleeastmonitor.com/wp-content/uploads/2017/01/2013_1_25-Egyptian-revolution-1.jpg?resize=1200%2C800&quality=85&strip=all&zoom=1&ssl=1',
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom:3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 7.0,
              ),
            ),
          ],
        ),
        SizedBox(height: 15.0,),
        Text('Amr Darwish Ahmed Naguib',
          maxLines: 2,// to limit the lines of the widget
          overflow: TextOverflow.ellipsis, // to put .... after the long text to say there is a long text
        ),
      ],
    ),
  ) ;
  //To creat List View
    //1. build item

}
