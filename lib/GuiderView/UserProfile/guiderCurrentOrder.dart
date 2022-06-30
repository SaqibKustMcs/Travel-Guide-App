import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/GuiderView/GuiderCompletedOrder/completeOrder.dart';
import 'package:travel_guide/TravelerView/CompletedOrder/completeOrder.dart';
import 'package:travel_guide/TravelerView/UserProfile/editProfile.dart';
class GuiderCurrentOrder extends StatelessWidget {
  const GuiderCurrentOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,


            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height*0.22,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffC38D9D)
                  ),
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius:40,
                        backgroundImage: AssetImage("assets/images/Ellipse 1.png"),


                      ),
                      title: Text("Hello Keyleen",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                      subtitle: Text("Travellers Profile",style: GoogleFonts.poppins(fontSize:14,color: Colors.white.withOpacity(0.7)),),
                      trailing: CircleAvatar(


                          backgroundColor: Colors.white.withOpacity(0.2),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                                onTap: (){Get.to(EditProfile());},
                                child: ImageIcon(AssetImage("assets/images/Vector (4).png"),color: Colors.white,)),
                          )



                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                    child: GestureDetector(
                        onTap: (){Get.to(GuiderCompleteOrder());},
                        child: Text("View Past Orders",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Color(0xffC38D9D)),)),
                  )),
              SizedBox(height: 100,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Current",
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
              SizedBox(height: 10,),
              Stack(
                clipBehavior: Clip.none,

                children: [
                  Container(


                     width: MediaQuery.of(context).size.width*0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:Colors.grey.shade300,width: 1)

                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width*0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rob Percivel",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.poppins(
                                    color: Color(0xff666666),
                                    fontSize: 18
                                  ),
                                  textAlign: TextAlign.justify),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(Icons.location_on_sharp,color:Colors.red,),
                                  Text("Track Guide",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: GoogleFonts.poppins(
                                        color: Color(0xff666666),
                                        fontSize: 12
                                      ),
                                      textAlign: TextAlign.justify),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("\$12/hr",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: GoogleFonts.poppins(
                                    color: Color(0xff666666),
                                    fontSize: 16
                                ),
                                textAlign: TextAlign.justify),
                            SizedBox(height: 10,),
                            Text("End in 3 Days",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: GoogleFonts.poppins(
                                  color:Color(0xff183046),
                                  fontSize: 10,


                                ),
                                textAlign: TextAlign.justify),

                          ],
                        )
                      ],
                    ),
                  )
                  ,
                  Positioned.fill(


                    top: -35,
                      right: -12,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFA6161)

                          ),

                          height: MediaQuery.of(context).size.height*0.09,

                          width: MediaQuery.of(context).size.width*0.06,
                          child: Icon(Icons.close,size: 12,color: Colors.white70,),
                        ),
                      ))
                ],
              ),




              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
