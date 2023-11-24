import 'package:adv_exam1/CountryProvider.dart';
import 'package:adv_exam1/HomePage.dart';
import 'package:adv_exam1/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryDetailPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CountryDetailPageState();
  }

}
class CountryDetailPageState extends State<CountryDetailPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<CountryProvider>(context,listen: false).fetchCountries();
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build


    final themeprovider=Provider.of<ThemeProvider>(context, listen: false);
    final countryProvider = Provider.of<CountryProvider>(context);
    countryProvider.fetchCountries();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeprovider.themeModal.isDark?Colors.purpleAccent:Colors.purple,
        title: Text("$SelectedcountryName"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).changeTheme();
            },
            icon: (Provider.of<ThemeProvider>(context).themeModal.isDark)
                ? const Icon(Icons.mode_night)
                : const Icon(Icons.light_mode_rounded),
          ),
        ],
      ),
      body:  Consumer<CountryProvider>(
        builder: (context, provider, child) {
          if (provider.countries.isEmpty) {
            return Center(child: CircularProgressIndicator());
          } else {
            return
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Center(child: Image(image: NetworkImage(provider.countries[0].flags.png),height: 250,width: 250,)),
                      fun("Offical Name",'${provider.countries[0].name.official}'),
                      provider.countries[0].independent?Text("=> $SelectedcountryName is independent.\n",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)):Text("=> $SelectedcountryName is independent.\n",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)),
                      fun("Country Code", "${provider.countries[0].cca2}, ${provider.countries[0].cca3}"),
                      fun("Info about flag",'${provider.countries[0].flags.alt}'),
                      Text("\n=> $SelectedcountryName has  ${provider.countries[0].region} it Region.",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      Text("\n=> $SelectedcountryName has ${provider.countries[0].subregion} it Subregion.",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      Text("\n=> $SelectedcountryName is in ${provider.countries[0].continents[0]}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      Text("\n=> Population of $SelectedcountryName : ${provider.countries[0].population}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)),
                      Text("\n=> $SelectedcountryName's current Capital is ${provider.countries[0].capital[0]}\n",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)),
                      fun("TimeZone", ("${provider.countries[0].timezones}"),),
                      Text("=> In this Country Weekday Starts with  ${provider.countries[0].startOfWeek}.",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      provider.countries[0].unMember?Text("\n=> In this Country is  Member United Nation .\n",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),) :Text("\n=> In this Country is not Member United Nation .\n",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                      fun("Cellular communication network factor 3 ${provider.countries[0].cca3}","${provider.countries[0].ccn3}"),
                      fun("Roots of Cuntroies","${provider.countries[0].idd.root}"),
                      fun("Suffixes of Cuntroies","${provider.countries[0].idd.suffixes}"),
                      Text("=> This country's Car's doar open ${provider.countries[0].car.side} Side.",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)),
                      Text("\n=> This country's Car's  sign is  ${provider.countries[0].car.signs[0]}.",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16)),

                    ],
                  ),
                ),
              );

          }
        },
      ),
    );
  }
  Widget fun(String a,String b){
    return
      Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("=> $a : ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
          Expanded(
            child: SizedBox(
                child: Text("$b\n",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),textAlign: TextAlign.start,)),
          ),
        ],
    );
  }

}