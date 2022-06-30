
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        Center(
          child: Container(
            height: MediaQuery.of(context).size.height*0.22,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xffC38D9D)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius:40,
                    backgroundImage: AssetImage("assets/images/Ellipse 1.png"),


                  ),
                  title: Text("Hello Keyleen",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
                  subtitle: Text("Travellers Profile",style: GoogleFonts.poppins(color: Colors.white.withOpacity(0.7)),),
                  trailing: CircleAvatar(


                      backgroundColor: Colors.white.withOpacity(0.2),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: (){},
                            child: ImageIcon(AssetImage("assets/images/Vector (4).png"),size: 20,color: Colors.white,)),
                      )



                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height:40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,),
          child: Text("Active Amount",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 20,fontWeight: FontWeight.w400),),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
            child: Text("\$124.41",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 36,fontWeight: FontWeight.w500),),
          )
          ,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0,),
            child: Text("Active Cards",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.2,
                  decoration: BoxDecoration
                    (
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Rectangle 44.png"

                      ),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.2,
                  decoration: BoxDecoration
                    (
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/Rectangle 44.png"

                          ),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.2,
                  decoration: BoxDecoration
                    (
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/Rectangle 44.png"

                          ),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0,),
            child: Text("Recent Buying's",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.1,
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

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.1,
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

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

      ],),
    );
  }
}
