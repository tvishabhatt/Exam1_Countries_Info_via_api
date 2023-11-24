import 'package:adv_exam1/CountryDetailPage.dart';
import 'package:adv_exam1/SeeMoreProvider.dart';
import 'package:adv_exam1/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}
List<String> countryName=['Afghanistan','Albania','Algeria','Andorra','Angola','Antigua and Barbuda','Argentina','Armenia','Australia','Austria','Azerbaijan','The Bahamas',
  'Bahrain','Bangladesh','Barbados','Belarus','Belgium','Belize','Benin','Bhutan''Bolivia','Bosnia and Herzegovina','Botswana','Brazil','Brunei','Bulgaria','Burkina Faso','Burundi',
  'Cabo Verde','Cambodia','Cameroon','Canada','Central African Republic','Chad','Chile','China','Colombia','Comoros','Congo','Denmark','Djibouti','Dominica','Dominican Republic',
  'East Timor','Ecuador','Egypt','El Salvador','Equatorial Guinea','Eritrea','Estonia','Eswatini','Ethiopia','Fiji','Finland','France''Gabon','The Gambia','Georgia','Germany',
  'Ghana','Greece','Grenada','Guatemala','Guinea','Guinea-Bissau','Guyana''Haiti','Honduras','Hungary','Iceland','India','Indonesia','Iran','Iraq','Ireland','Israel','Italy',
  'Jamaica','Japan','Jordan','Kazakhstan','Kenya','Kiribati','North Korea','South Korea','Kosovo','Kuwait','Kyrgyzstan','Laos','Latvia','Lebanon','Lesotho','Liberia','Libya',
  'Liechtenstein','Lithuania','Luxembourg', 'Madagascar', 'Malawi','Malaysia','Maldives', 'Mali','Malta','Marshall Islands','Mauritania','Mauritius','Mexico','Micronesia','Monaco',
  'Mongolia','Montenegro','Morocco','Mozambique','Myanmar','Namibia','Nauru','Nepal','Netherlands','New Zealand','Nicaragua','Niger','Nigeria','North Macedonia','Norway','Oman',
  'Pakistan','Palau','Panama','Papua New Guinea','Paraguay','Peru','Philippines','Poland','Portugal','Qatar','Romania','Russia','Rwanda','Saint Kitts and Nevis', 'Saint Lucia',
  'Saint Kitts and Nevi','San Marino','Sao Tome and Principe','Saudi Arabia','Senegal','Serbia','Seychelles','Sierra Leone','Singapore','Slovakia','Slovenia','Solomon Islands','Somalia',
  'South Africa','Spain','Sri Lanka','Sudan','South Sudan ', 'Suriname','Sweden','Switzerland','Syria','Taiwan','Tajikistan','Tanzania','Thailand','Togo','Tonga','Trinidad and Tobago',
  'Tunisia', 'Turkey', 'Turkmenistan', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States of America', 'Uruguay,''Uzbekistan', 'Vanuatu', 'Vatican City', 'Venezuela',
  'Vietnam', 'Yemen', 'Zambia', 'Zimbabwe'];
List<String> popularcountryName=["India",'United States of America','United Kingdom','Sri Lanka','Canada','China','Spain','South Africa','France','Germany','Belgium','Afghanistan','Russia','Pakistan'];
late String SelectedcountryName;
class HomePageState extends State<HomePage>{
  TextEditingController myController=TextEditingController();
  bool morec=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build

    final themeprovider=Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(

        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: themeprovider.themeModal.isDark?Colors.purpleAccent:Colors.purple,
          title: Text(" Select your Country"),
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
      body: Consumer<SeeMoreProvider>(
         builder: (context,seemorecountryProvider,child) {
           return Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
             children: [
               seemorecountryProvider.more? IconButton(onPressed: () {
             seemorecountryProvider.changbooltofalse();

           }, icon: Icon(Icons.arrow_back)):  Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Some of Popular Countrys : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
               ),
               seemorecountryProvider.more?
               Expanded(
                 child: ListView.builder(
                   itemCount: countryName.length,
                   itemBuilder: (context, index) {
                     return InkWell(
                       onTap: () {
                         SelectedcountryName=countryName[index];

                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => CountryDetailPage(),));
                       },
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Card(
                           child: ListTile(
                             title: Text("${countryName[index]}"),
                           ),
                         ),
                       ),
                     );
                   },
                 ),
               ):
               Expanded(
                 child: ListView.builder(
                   itemCount: popularcountryName.length,
                   shrinkWrap: true,
                   itemBuilder: (context, index) {
                     return InkWell(
                       onTap: () {
                         SelectedcountryName=popularcountryName[index];

                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => CountryDetailPage(),));
                       },
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Card(
                           child: ListTile(
                             title: Text("${popularcountryName[index]}"),
                           ),
                         ),
                       ),
                     );
                   },
                 ),
               ),
             seemorecountryProvider.more?Container():
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Center(
                 child: TextButton(onPressed: () {
                   seemorecountryProvider.changbooltotrue();

                 }, child: Text("See more ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,
                     color: themeprovider.themeModal.isDark?Colors.purpleAccent:Colors.purple,),)),
               ),
             ),





             ],
           );
         }
       )

    );
  }
}

