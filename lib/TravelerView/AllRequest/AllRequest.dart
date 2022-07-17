import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';
class AllRequest extends StatelessWidget {
  const AllRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification? overscroll) {
            overscroll!.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopAppBar(),
                Container(
                  height: MediaQuery.of(context).size.height *0.8,
                  width: MediaQuery.of(context).size.width * 0.93,
                  decoration: BoxDecoration(border: Border.all(width: 0.5)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/Ellipse 1.png"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Natsi Oli",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff5A5A5A)),
                                    ),
                                    Text(
                                      "January 21,2022",
                                      style: GoogleFonts.poppins(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff9E9E9E)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10),
                          child: Text(
                            "From Pioneers to Private Mega-Yachts: A Half-Day Tour through 126 Years",
                            style: GoogleFonts.poppins(
                                fontSize: 13.sp
                                ,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff666666)),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/Rectangle 52.png"))),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Row(
                              children: [  Icon(
                                Icons.favorite_border,
                                size: 20,
                                color: Color(0xff666666),
                              ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Liked by 21",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff666666)),
                                )],
                            ),
                              Text("Comments",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 13.sp,color: Color(0xff666666)),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Add your comment",
                                      hintStyle: GoogleFonts.poppins(fontSize: 15.sp),
                                      focusColor:Colors.white,
                                      contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(2),

                                      ),
                            focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.grey,
                                  )),

                                    ),

                                  ),
                                ),

                              ),
                              Container(
                                height:47,
                                width: 37,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                  child: Icon(CupertinoIcons.paperplane_fill,color:Colors.white,size: 20,),
                                ),
                              )

                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 23,
                                backgroundImage: AssetImage(
                                  'assets/images/Ellipse 1.png'
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0,),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Jhon doe ",style: GoogleFonts.poppins(fontSize: 14.sp,fontWeight: FontWeight.w500),),
                                          Text("1m",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,color: Colors.grey,fontSize: 14.sp),),
                                        ],
                                      ),
                                      Text("Lorem ipsum dolor sit amet  adipiscing elit. ",maxLines: 2,textAlign: TextAlign.justify,style: GoogleFonts.poppins(fontSize: 15.sp),),
                                      Row(children: [
                                        Icon(Icons.favorite_border,size: 18,),
                                        Text(" Reply",style: GoogleFonts.poppins(fontSize: 14.sp),),
                                      ],)
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),
                        // SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(children: [
                            Text(
                              "View more comments",style: GoogleFonts.poppins(fontSize: 12.sp),
                            ),
                            Text(" (12)",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 12.sp),)
                          ],),
                        )

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,

                        border: Border.all(width: 0.5),

                      ),
                      child: Center(
                        child:Icon(Icons.add)
                      ),
                    ),
                    Text(" Add Media",style: GoogleFonts.poppins(fontSize: 16.sp,fontWeight:FontWeight.w400,color: Color(0xff9C9C9C)),)
                  ],
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
