class Countrysmodal{


  Name name=Name(common: '', official: '', nativeName: NativeName(est: Est(official: '', common: '')));
  List<String> tld=[];
  String cca2='';
  String ccn3='';
  String cca3='';
  String cioc='';
  bool independent=true;
  String status='';
  bool unMember=false;
  Currencies currencies=Currencies(eUR: EUR(name: '', symbol: ''));
  Idd idd=Idd(root: '', suffixes:[]);
  List<String> capital=[];
  List<String> altSpellings=[];
  String region='';
  String subregion='';
  Languages languages=Languages(est: '');
  Translations translations=Translations(ara: Est(official: '', common: ''), bre: Est(official: '', common: ''), ces: Est(official: '', common: ''), cym: Est(official: '', common: ''), deu: Est(official: '', common: ''), est: Est(official: '', common: ''), fin: Est(official: '', common: ''), fra: Est(official: '', common: ''), hrv: Est(official: '', common: ''), hun: Est(official: '', common: ''), ita: Est(official: '', common: ''), jpn: Est(official: '', common: ''), kor: Est(official: '', common: ''), nld: Est(official: '', common: ''), per: Est(official: '', common: ''), pol: Est(official: '', common: ''), por: Est(official: '', common: ''), rus: Est(official: '', common: ''), slk: Est(official: '', common: ''), spa: Est(official: '', common: ''), srp: Est(official: '', common: ''), swe: Est(official: '', common: ''), tur: Est(official: '', common: ''), urd: Est(official: '', common: ''), zho: Est(official: '', common: ''));
  List<int> latlng=[];
  bool landlocked=true;
  List<String> borders=[];
  int area=0;
  Demonyms demonyms=Demonyms(eng: Eng(f: '', m: ''), fra: Eng(f: '', m: ''));
  String flag='';
  Maps maps=Maps(googleMaps: '', openStreetMaps: '');
  int population=0;
  Gini gini=Gini(d2018: 0);
  String fifa='';
  Car car=Car(signs: [], side: '');
  List<String> timezones=[];
  List<String> continents=[];
  Flags flags=Flags(png: '', svg: '', alt: '');
  CoatOfArms coatOfArms=CoatOfArms(png: '', svg: '');
  String startOfWeek='';
  CapitalInfo capitalInfo=CapitalInfo(latlng: []);
  Postalcode postalcode=Postalcode(format: '', regex: '');


  Countrysmodal({required this.name,required this.tld,required this.cca2,required this.ccn3,required this.cca3,required this.cioc,required this.independent,required this.status,required this.unMember,required this.currencies,required this.idd,required this.capital,required this.altSpellings,required this.region,required this.subregion,required this.languages,required this.translations,required this.latlng,required this.landlocked,
  required this.borders,required this.area,required this.demonyms,required this.flag,required this.maps,required this.population,required this.gini,required this.fifa,required this.car,required this.timezones,required this.continents,required this.flags,required this.coatOfArms,required this.startOfWeek,required this.capitalInfo,required this.postalcode,});

  Countrysmodal.fromJson(Map<String, dynamic> json) {
    name = Name.fromJson(json['name'] ?? {});
    tld = (json['tld'] as List<dynamic>?)?.cast<String>() ?? [];
    cca2 = json['cca2'] ?? '';
    ccn3 = json['ccn3'] ?? '';
    cca3 = json['cca3'] ?? '';
    cioc = json['cioc'] ?? '';
    independent = json['independent'] ?? true;
    status = json['status'] ?? '';
    unMember = json['unMember'] ?? false;
    currencies = Currencies.fromJson(json['currencies'] ?? {});
    idd = Idd.fromJson(json['idd'] ?? {});
    capital = (json['capital'] as List<dynamic>?)?.cast<String>() ?? [];
    altSpellings = (json['altSpellings'] as List<dynamic>?)?.cast<String>() ?? [];
    region = json['region'] ?? '';
    subregion = json['subregion'] ?? '';
    languages = Languages.fromJson(json['languages'] ?? {});
    translations = Translations.fromJson(json['translations'] ?? {});
    latlng = (json['latlng'] as List<dynamic>?)?.cast<int>() ?? [];
    landlocked = json['landlocked'] ?? true;
    borders = (json['borders'] as List<dynamic>?)?.cast<String>() ?? [];
    area = json['area'] ?? 0;
    demonyms = Demonyms.fromJson(json['demonyms'] ?? {});
    flag = json['flag'] ?? '';
    maps = Maps.fromJson(json['maps'] ?? {});
    population = json['population'] ?? 0;
    gini = Gini.fromJson(json['gini'] ?? {});
    fifa = json['fifa'] ?? '';
    car = Car.fromJson(json['car'] ?? {});
    timezones = (json['timezones'] as List<dynamic>?)?.cast<String>() ?? [];
    continents = (json['continents'] as List<dynamic>?)?.cast<String>() ?? [];
    flags = Flags.fromJson(json['flags'] ?? {});
    coatOfArms = CoatOfArms.fromJson(json['coatOfArms'] ?? {});
    startOfWeek = json['startOfWeek'] ?? '';
    capitalInfo = CapitalInfo.fromJson(json['capitalInfo'] ?? {});
    postalcode = Postalcode.fromJson(json['postalcode'] ?? {});
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['tld'] = this.tld;
    data['cca2'] = this.cca2;
    data['ccn3'] = this.ccn3;
    data['cca3'] = this.cca3;
    data['cioc'] = this.cioc;
    data['independent'] = this.independent;
    data['status'] = this.status;
    data['unMember'] = this.unMember;
    if (this.currencies != null) {
      data['currencies'] = this.currencies!.toJson();
    }
    if (this.idd != null) {
      data['idd'] = this.idd!.toJson();
    }
    data['capital'] = this.capital;
    data['altSpellings'] = this.altSpellings;
    data['region'] = this.region;
    data['subregion'] = this.subregion;
    if (this.languages != null) {
      data['languages'] = this.languages!.toJson();
    }
    if (this.translations != null) {
      data['translations'] = this.translations!.toJson();
    }
    data['latlng'] = this.latlng;
    data['landlocked'] = this.landlocked;
    data['borders'] = this.borders;
    data['area'] = this.area;
    if (this.demonyms != null) {
      data['demonyms'] = this.demonyms!.toJson();
    }
    data['flag'] = this.flag;
    if (this.maps != null) {
      data['maps'] = this.maps!.toJson();
    }
    data['population'] = this.population;
    if (this.gini != null) {
      data['gini'] = this.gini!.toJson();
    }
    data['fifa'] = this.fifa;
    if (this.car != null) {
      data['car'] = this.car!.toJson();
    }
    data['timezones'] = this.timezones;
    data['continents'] = this.continents;
    if (this.flags != null) {
      data['flags'] = this.flags!.toJson();
    }
    if (this.coatOfArms != null) {
      data['coatOfArms'] = this.coatOfArms!.toJson();
    }
    data['startOfWeek'] = this.startOfWeek;
    if (this.capitalInfo != null) {
      data['capitalInfo'] = this.capitalInfo!.toJson();
    }
    if (this.postalcode != null) {
      data['postalcode'] = this.postalcode!.toJson();
    }
    return data;
  }



}
class Name{
  String common='';
  String official='';
  NativeName nativeName=NativeName(est: Est(official: '', common: ''));
  Name({required this.common,required this.official,required this.nativeName});


  Name.fromJson(Map<String,dynamic> data){
    common=data['common']??"";
    official=data['official']??"";
    nativeName = NativeName.fromJson(data['nativeName']??{});
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    data['common']=this.common;
    data['official']=this.official;
    if(this.nativeName !=null){
      data['nativeName']=this.nativeName!.toJson();
    }
    return data;
  }
}
class NativeName{
  Est est=Est(official: '', common: '');

  NativeName({required this.est});

  NativeName.fromJson(Map<String,dynamic> data){
    est=Est.fromJson(data['est']??{});
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    data['est']=this.est.toJson();
      return data;
  }

}
class Est{
  String official='';
  String common='';


  Est({required this.official,required this.common});


  factory Est.fromJson(Map<String,dynamic>? data){
   if(data !=null){
     return Est(official: data['official']??'',
         common: data['common']??'',
     );
   }
   else{
     return Est(official: '', common: '');
   }
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    data['official']=this.official;
    data['common']=this.common;
    return data;
  }
}
class Currencies {
  EUR eUR;

  Currencies({required this.eUR});

  factory Currencies.fromJson(Map<String, dynamic>? data) {
    if (data != null) {
      return Currencies(eUR: EUR.fromJson(data['eUR']));
    } else {
      return Currencies(eUR: EUR(name: '', symbol: ''));
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eUR'] = this.eUR.toJson();
    return data;
  }
}

class EUR {
  String name;
  String symbol;

  EUR({required this.name, required this.symbol});

  factory EUR.fromJson(Map<String, dynamic>? data) {
    if (data != null) {
      return EUR(
        name: data['name'] ?? '',
        symbol: data['symbol'] ?? '',
      );
    } else {
      return EUR(name: '', symbol: '');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    return data;
  }
}
class Idd{
  String root='';
  List<String> suffixes=[];

  Idd({required this.root,required this.suffixes});

  Idd.fromJson(Map<String,dynamic> data){
    root=data['root']??"";
    suffixes = data['suffixes'].cast<String>()??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['root'] = this.root;
    data['suffixes'] = this.suffixes;
    return data;
  }

}
class Languages{
  String est='';
   Languages({required this.est});

   Languages.fromJson(Map<String,dynamic> data){
     est=data['est']??"";
   }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['est'] = this.est;
    return data;
  }
}
class Translations{
  Est ara=Est(official: '', common: '');
  Est bre=Est(official: '', common: '');
  Est ces=Est(official: '', common: '');
  Est cym=Est(official: '', common: '');
  Est deu=Est(official: '', common: '');
  Est est=Est(official: '', common: '');
  Est fin=Est(official: '', common: '');
  Est fra=Est(official: '', common: '');
  Est hrv=Est(official: '', common: '');
  Est hun=Est(official: '', common: '');
  Est ita=Est(official: '', common: '');
  Est jpn=Est(official: '', common: '');
  Est kor=Est(official: '', common: '');
  Est nld=Est(official: '', common: '');
  Est per=Est(official: '', common: '');
  Est pol=Est(official: '', common: '');
  Est por=Est(official: '', common: '');
  Est rus=Est(official: '', common: '');
  Est slk=Est(official: '', common: '');
  Est spa=Est(official: '', common: '');
  Est srp=Est(official: '', common: '');
  Est swe=Est(official: '', common: '');
  Est tur=Est(official: '', common: '');
  Est urd=Est(official: '', common: '');
  Est zho=Est(official: '', common: '');


   Translations({required this.ara,required this.bre,required this.ces,required this.cym,required this.deu,required this.est,required this.fin,required this.fra,required this.hrv,required this.hun,
   required this.ita,required this.jpn,required this.kor,required this.nld,required this.per,required this.pol,required this.por,required this.rus,required this.slk,required this.spa,required this.srp,
   required this.swe,required this.tur,required this.urd,required this.zho});
  Translations.fromJson(Map<String, dynamic> data) {
    ara = Est.fromJson(data['ara'] ?? {});
    bre = Est.fromJson(data['bre'] ?? {});
    ces = Est.fromJson(data['ces'] ?? {});
    cym = Est.fromJson(data['cym'] ?? {});
    deu = Est.fromJson(data['deu'] ?? {});
    est = Est.fromJson(data['est'] ?? {});
    fin = Est.fromJson(data['fin'] ?? {});
    fra = Est.fromJson(data['fra'] ?? {});
    hrv = Est.fromJson(data['hrv'] ?? {});
    hun = Est.fromJson(data['hun'] ?? {});
    ita = Est.fromJson(data['ita'] ?? {});
    jpn = Est.fromJson(data['jpn'] ?? {});
    kor = Est.fromJson(data['kor'] ?? {});
    nld = Est.fromJson(data['nld'] ?? {});
    per = Est.fromJson(data['per'] ?? {});
    pol = Est.fromJson(data['pol'] ?? {});
    por = Est.fromJson(data['por'] ?? {});
    rus = Est.fromJson(data['rus'] ?? {});
    slk = Est.fromJson(data['slk'] ?? {});
    spa = Est.fromJson(data['spa'] ?? {});
    srp = Est.fromJson(data['srp'] ?? {});
    swe = Est.fromJson(data['swe'] ?? {});
    tur = Est.fromJson(data['tur'] ?? {});
    urd = Est.fromJson(data['urd'] ?? {});
    zho = Est.fromJson(data['zho'] ?? {});
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ara != null) {
      data['ara'] = this.ara!.toJson();
    }
    if (this.bre != null) {
      data['bre'] = this.bre!.toJson();
    }
    if (this.ces != null) {
      data['ces'] = this.ces!.toJson();
    }
    if (this.cym != null) {
      data['cym'] = this.cym!.toJson();
    }
    if (this.deu != null) {
      data['deu'] = this.deu!.toJson();
    }
    if (this.est != null) {
      data['est'] = this.est!.toJson();
    }
    if (this.fin != null) {
      data['fin'] = this.fin!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    if (this.hrv != null) {
      data['hrv'] = this.hrv!.toJson();
    }
    if (this.hun != null) {
      data['hun'] = this.hun!.toJson();
    }
    if (this.ita != null) {
      data['ita'] = this.ita!.toJson();
    }
    if (this.jpn != null) {
      data['jpn'] = this.jpn!.toJson();
    }
    if (this.kor != null) {
      data['kor'] = this.kor!.toJson();
    }
    if (this.nld != null) {
      data['nld'] = this.nld!.toJson();
    }
    if (this.per != null) {
      data['per'] = this.per!.toJson();
    }
    if (this.pol != null) {
      data['pol'] = this.pol!.toJson();
    }
    if (this.por != null) {
      data['por'] = this.por!.toJson();
    }
    if (this.rus != null) {
      data['rus'] = this.rus!.toJson();
    }
    if (this.slk != null) {
      data['slk'] = this.slk!.toJson();
    }
    if (this.spa != null) {
      data['spa'] = this.spa!.toJson();
    }
    if (this.srp != null) {
      data['srp'] = this.srp!.toJson();
    }
    if (this.swe != null) {
      data['swe'] = this.swe!.toJson();
    }
    if (this.tur != null) {
      data['tur'] = this.tur!.toJson();
    }
    if (this.urd != null) {
      data['urd'] = this.urd!.toJson();
    }
    if (this.zho != null) {
      data['zho'] = this.zho!.toJson();
    }
    return data;
  }
}
class Demonyms{
  Eng eng=Eng(f: '', m:'');
  Eng fra=Eng(f: '', m: '');


  Demonyms({required this.eng,required this.fra});

  Demonyms.fromJson(Map<String, dynamic> data) {
    eng = Eng.fromJson(data['eng'] ?? {});
    fra = Eng.fromJson(data['fra'] ?? {});
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eng != null) {
      data['eng'] = this.eng!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    return data;
  }


}
class Eng{
  String f='';
  String m='';
   Eng({required this.f,required this.m});

  Eng.fromJson(Map<String, dynamic> data) {
    f = data['f']??"";
    m = data['m']??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f'] = this.f;
    data['m'] = this.m;
    return data;
  }


}
class Maps{

  String  googleMaps='';
  String openStreetMaps='';


  Maps({required this.googleMaps,required this.openStreetMaps});

  Maps.fromJson(Map<String,dynamic> data){
    googleMaps=data['googleMaps']??'';
    openStreetMaps=data['openStreetMaps']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['googleMaps'] = this.googleMaps;
    data['openStreetMaps'] = this.openStreetMaps;
    return data;
  }

}
class Gini{
  double d2018=0;
  Gini({required this.d2018});
  Gini.fromJson(Map<String,dynamic> data){
    d2018=data['d2018']??0.0;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['2018'] = this.d2018;
    return data;
  }
}
class Car{
  List<String> signs=[];
  String side='';

  Car({required this.signs,required this.side});

  Car.fromJson(Map<String,dynamic> data){
    signs=data['signs'].cast<String>()??[];
    side=data['side']??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['signs'] = this.signs;
    data['side'] = this.side;
    return data;
  }
}
class Flags{
  String png='';
  String svg='';
  String alt='';

  Flags({required this.png,required this.svg,required this.alt});

  Flags.fromJson(Map<String, dynamic> data) {
    png = data['png']??'';
    svg = data['svg']??'';
    alt = data['alt']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    data['alt'] = this.alt;
    return data;
  }
}
class CoatOfArms {
  String png='';
  String svg='';

  CoatOfArms({required this.png,required this.svg});

  CoatOfArms.fromJson(Map<String, dynamic> data) {
    png = data['png']??'';
    svg = data['svg']??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    return data;
  }
}
class CapitalInfo {
  List<double> latlng=[];

  CapitalInfo({required this.latlng});

  CapitalInfo.fromJson(Map<String, dynamic> data) {
    latlng = data['latlng'].cast<double>()??[];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latlng'] = this.latlng;
    return data;
  }
}
class Postalcode{
  String format='';
  String regex='';

  Postalcode({required this.format,required this.regex});

  Postalcode.fromJson(Map<String, dynamic> data) {
    format = data['format']??'';
    regex = data['regex']??'';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['format'] = this.format;
    data['regex'] = this.regex;
    return data;
  }
}


