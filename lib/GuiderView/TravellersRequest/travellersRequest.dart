import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:travel_guide/Widgets/DropDown/perHourDropDown.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';

class TravellersRequest extends StatelessWidget {
  const TravellersRequest({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification? overscroll) {
          overscroll!.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top:45
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopAppBar(),
                // SizedBox(
                //   height: 40,
                // ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Rectangle 13.png'),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Onur Ozdeir",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff666666)),
                                          ),
                                          Text(
                                            '\$124/h',
                                            style: GoogleFonts.poppins(
                                              fontSize: 13.sp,
                                                color: Color(0xff183046),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "Florida, USA",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                          fontSize: 6.sp, color: Color(0xff666666)),
                                    ),
                                    Row(
                                      children: [
                                        SmoothStarRating(
                                          rating: 5,
                                          size: 10,
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
                                        Text(
                                          '(120)',
                                          style: GoogleFonts.poppins(
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff666666)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                        "Enjoy a Thrilling Shared Airboat Ride, and Explore the Exhibits",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: GoogleFonts.poppins(
                                            color: Color(0xff666666),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 8.sp),
                                        textAlign: TextAlign.justify),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        "Budget",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp
                            ,
                            color: Color(0xff666666)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 75,
                          right: 50
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                        child: PerHourdropDown(selectedItem: "Per Hour",)),
                      )

                    ],
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        "Days",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp,
                            color: Color(0xff666666)),
                      ),
                      SizedBox(width: 100,),
                      Text("3",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp
                            ,
                            color: Color(0xff666666)),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: "Description",
                        hintStyle: TextStyle(
                            color: Color(
                              0xff666666,
                            ),
                            fontSize: 17.sp),
                        helperMaxLines: 4,
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color((0xffE27D5F)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Send",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
