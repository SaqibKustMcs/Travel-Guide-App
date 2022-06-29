import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:travel_guide/TravelerView/UserProfile/currentOrder.dart';
 class CompleteOrder extends StatelessWidget {
   const CompleteOrder({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return SafeArea(

       child: Scaffold(
         backgroundColor: Color(0xffFFFFFF),




         body: SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 height: MediaQuery.of(context).size.height * 0.22,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(color: Color(0xffC38D9D)),
                 child: Center(
                   child: ListTile(
                     leading: CircleAvatar(
                       radius: 40,
                       backgroundImage:
                       AssetImage("assets/images/Ellipse 1.png"),
                     ),
                     title: Text(
                       "Hello Keyleen",
                       style: GoogleFonts.poppins(
                           color: Colors.white,
                           fontWeight: FontWeight.w500,
                           fontSize: 18),
                     ),
                     subtitle: Text(
                       "Travellers Profile",
                       style: GoogleFonts.poppins(
                           color: Colors.white.withOpacity(0.7), fontSize: 14),
                     ),
                     trailing: CircleAvatar(
                         backgroundColor: Colors.white.withOpacity(0.2),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: InkWell(
                               onTap: () {

                               },
                               child: ImageIcon(AssetImage("assets/images/Vector (4).png",),color: Colors.white,)),
                         )),
                   ),
                 ),
               ),
               Align(
                   alignment: Alignment.centerRight,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                     child: GestureDetector(
                         onTap:(){Get.to(CurrentOrder());},
                         child: Text("View Current Orders",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Color(0xffC38D9D)),)),
                   )),
               SizedBox(height: 50,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Completed",
                             style: GoogleFonts.poppins(
                                 color: Color(0xff183046), fontSize: 36)),
                         Text("Tours",
                             style: GoogleFonts.poppins(
                                 color: Color(0xff183046), fontSize: 36)),
                       ],
                     ),
                     Icon(Icons.arrow_forward_outlined,size: 26,color: Colors.grey,)
                   ],
                 ),
               ),
               SizedBox(height: 30,),
               Container(
                 height: MediaQuery.of(context).size.height*0.14,
                 width: MediaQuery.of(context).size.width*0.9,
                 decoration: BoxDecoration(
                 color: Color(0xffFFFFFFD),
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(width: 0.3)
                     ,
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                   child: Row(
                     children: [
                       Container(
                         height:MediaQuery.of(context).size.height*0.15,
                         width: MediaQuery.of(context).size.width*0.11,
                         decoration:BoxDecoration(
                           color: Color(0xff6CE19B),
                       shape: BoxShape.circle,
                   ),



                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Center(child: Icon(Icons.check,color: Colors.white70,size: 25,)),
                         ),
                       ),
                       SizedBox(width: 20,),
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 12.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             crossAxisAlignment: CrossAxisAlignment.start,

                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("Rob Percivel",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400,color:Color(0xff183046)),),
                                   Text("\$12/hr",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color:Color(0xff183046)),),

                                 ],
                               ),
                               Text("Conpleted 2 days ago",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6A7A89)),)
                              , Text("Drop Review",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff559BDC)),)

                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               Container(
                 height: MediaQuery.of(context).size.height*0.14,
                 width: MediaQuery.of(context).size.width*0.9,
                 decoration: BoxDecoration(
                   color: Color(0xffFFFFFFD),
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(width: 0.3)
                   ,
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                   child: Row(
                     children: [
                       Container(
                         height:MediaQuery.of(context).size.height*0.15,
                         width: MediaQuery.of(context).size.width*0.11,
                         decoration:BoxDecoration(
                           color: Color(0xff6CE19B),
                           shape: BoxShape.circle,
                         ),



                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Center(child: Icon(Icons.check,color: Colors.white70,size: 25,)),
                         ),
                       ),
                       SizedBox(width: 20,),
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 12.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             crossAxisAlignment: CrossAxisAlignment.start,

                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("Rob Percivel",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400,color:Color(0xff183046)),),
                                   Text("\$12/hr",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color:Color(0xff183046)),),

                                 ],
                               ),
                               Text("Conpleted 2 days ago",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6A7A89)),)
                              ,
                               SmoothStarRating(
                                 rating: 4,
                                 size: 15,
                                 color: Colors.yellow,
                                 filledIconData: Icons.star,
                                 halfFilledIconData: Icons.star_half,
                                 defaultIconData: Icons.star_border,
                                 starCount: 5,
                                 allowHalfRating: false,
                                 spacing: 2.0,
                                 // onRatingChanged: (value) {
                                 //   setState(() {
                                 //     rating = value;
                                 //   });
                                 // },
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ),

       ),
     );
   }
 }
