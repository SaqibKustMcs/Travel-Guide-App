import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/Save/saveWidget.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';

class GuiderSaved extends StatelessWidget {
  const GuiderSaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification? overscroll) {
          overscroll!.disallowIndicator();
          return true;
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopAppBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Saved Collection',
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff183046)),
                      ),
                      ImageIcon(AssetImage("assets/Icons/Vector (17).png"),color: Color(0xffC38D9D),),

                    ],
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Savedwidget();
                    },
                  ),
                ),
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
