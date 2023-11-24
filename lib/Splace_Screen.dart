import 'package:adv_exam1/HomePage.dart';
import 'package:adv_exam1/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Splace_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Splace_ScreenState();
  }

}
class Splace_ScreenState extends State<Splace_Screen>{
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 5),() {
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final themeprovider=Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(

      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('assetes/icons8-earth-64.png'),height: 100,width: 100,fit: BoxFit.cover,),
            Text("know about\nyour Country",style: GoogleFonts.dancingScript(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.purple),selectionColor: Colors.purple,textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }

}
