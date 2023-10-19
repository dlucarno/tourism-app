import 'package:flutter/foundation.dart';
import 'package:tour_360/models/place.dart';

class PlaceData extends ChangeNotifier {
  toggleIsFav(int id) {
    var place = _places.firstWhere((place) => place.id == id);
    place.toggleIsFav();
    notifyListeners();
  }

  bool isFav(int id) {
    var place = _places.firstWhere(
      (place) => place.id == id,
    );
    return place.isFavorite;
  }

  Place findById(int id) {
    return _places.firstWhere(
      (place) => place.id == id,
    );
  }

  getPlaces() {
    return [..._places];
  }

 List<Place>getFavorites(){
    List<Place> favList = [];
    for (var place in _places) {
      if(place.isFavorite) favList.add(place);
    }
    return favList;
  }

  final _places = [
    Place(
      id: 1,
      title: 'Île de Moneron',
      desc:
          'Le continent eurasien et l\'île de Sakhaline sont séparés par le détroit de Tartarie, dont la plus grande île est connue sous le nom de Moneron. Lorsqu\'une expédition dirigée par La Pérouse explorait ces eaux en 1787, Paul Merault Monneron, un officier d\'ingénieurs français, découvrit un nouveau morceau de terre ; l\'île fut nommée d\'après lui. Cependant, elle n\'était "nouvelle" que pour les Européens ; les indigènes de cette région, les Aïnous, la connaissaient depuis longtemps - ils l\'appelaient Todomoshiri ("île des lions de mer"). Lorsque les Japonais mentionnent l\'île, ils disent Kaibato : ce nom fait référence au peuple Aïnou.',
      location: 'Russie',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/moneron_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/moneron-island/images/image1.jpg',
        'https://www.airpano.com/files/moneron-island/images/image2.jpg',
        'https://www.airpano.com/files/moneron-island/images/image3.jpg',
        'https://www.airpano.com/files/moneron-island/images/image4.jpg',
        'https://www.airpano.com/files/moneron-island/images/image5.jpg',
      ],
    ),

    Place(
      id: 2,
      title: 'Parc national des Piliers de la Lena',
      desc:
      'En Yakoutie, sur les rives de la rivière Lena, se trouve le parc naturel des Piliers de la Lena. Il a été inscrit sur la liste du patrimoine mondial de l\'UNESCO pour son caractère unique, et c\'est un nom familier à tous les amoureux de la nature et les voyageurs. Cependant, le parc comprend deux types de "piliers" : non seulement les Piliers de la Lena, mais aussi les Piliers de Sinyaya. L\'équipe d\'AirPano a fait un tournage ici, et cette promenade photo vous permettra d\'apprécier leur échelle et leur magnificence.',
      location: 'Russie',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/lena_pillars_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/lena-pillars-summer/images/image1.jpg',
        'https://www.airpano.com/files/lena-pillars-summer/images/image2.jpg',
        'https://www.airpano.com/files/lena-pillars-summer/images/image3.jpg',
        'https://www.airpano.com/files/lena-pillars-summer/images/image4.jpg',
        'https://www.airpano.com/files/lena-pillars-summer/images/image5.jpg',
      ],
    ),

    Place(
      id: 3,
      title: 'Mangyshlak, Kazakhstan',
      desc:
      'La région de Mangystau est située dans le sud-ouest du Kazakhstan, sa superficie est de plus de 170 mille km2 (65,637 mi2), ce qui est presque aussi grand que tous les pays baltes réunis. Le climat est fortement continental, extrêmement sec. Cependant, une fois par an, en mai, les cieux s\'ouvrent pendant 7 à 10 jours, ce qui rend presque impraticable toute route de terre.',
      location: 'Kazakhstan',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/mangyshlak_kyzylkup.jpg',
      otherImgs: [
        'https://www.airpano.com/files/mangyshlak/images/image1.jpg',
        'https://www.airpano.com/files/mangyshlak/images/image2.jpg',
        'https://www.airpano.com/files/mangyshlak/images/image3.jpg',
        'https://www.airpano.com/files/mangyshlak/images/image4.jpg',
        'https://www.airpano.com/files/mangyshlak/images/image6.jpg',
      ],
    ),

    Place(
      id: 4,
      title: 'Lac salé Elton',
      desc:
      'Le lac est à 15 m (49 ft) sous le niveau de la mer. Il mesure 18 km de long et 13 km de large et a une superficie de 1 640 km2 (633 mi2). Le lac est alimenté par les eaux de fonte, il est donc le plus profond, jusqu\'à un mètre et demi (4,9 ft), au printemps, tandis qu\'en été il est presque asséché, et même les sept ruisseaux minéraux qui se jettent dans le lac ne peuvent pas augmenter le niveau de l\'eau.',
      location: 'Russie',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/elton_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/elton-lake/images/image1.jpg',
        'https://www.airpano.com/files/elton-lake/images/image3.jpg',
        'https://www.airpano.com/files/elton-lake/images/image4.jpg',
        'https://www.airpano.com/files/elton-lake/images/image5.jpg',
        'https://www.airpano.com/files/mangyshlak/images/image6.jpg',
      ],
    ),

    Place(
      id: 5,
      title: 'Cancun et ses environs, Mexique',
      desc:
      'Cancun est situé sur la rive sablonneuse qui rappelle le numéro "7", mesurant 400 mètres de large et 30 kilomètres de long. La qualité des plages de neige blanche de Cancun est si élevée qu\'il n\'y a pas si longtemps, un riche homme d\'affaires américain a acheté plusieurs barges de sable local pour sa résidence de campagne à New York.',
      location: 'Mexique',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/cancun_surroundings.jpg',
      otherImgs: [
        'https://www.airpano.com/files/cancun-2022/images/image1.jpg',
        'https://www.airpano.com/files/cancun-2022/images/image3.jpg',
        'https://www.airpano.com/files/cancun-2022/images/image7.jpg',
        'https://www.airpano.com/files/cancun-2022/images/image6.jpg',
        'https://www.airpano.com/files/cancun-2022/images/image5.jpg',
      ],
    ),

    Place(
      id: 6,
      title: 'Mexico City',
      desc:
      'Les sites touristiques de Mexico ont fait de la capitale l\'une des destinations touristiques les plus populaires en Amérique du Nord. Si on met ensemble, tous les contrastes de Mexico City : taux de criminalité élevé vs. hospitalité des habitants locaux, gratte-ciel ultra modernes vs. pyramides aztèques, bidonvilles vs. palais magnifiques, collines vs. plaines — donnent à la ville une atmosphère spéciale inoubliable.',
      location: 'Mexique',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/mexico_2022_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/mexico-city-2022/images/image2.jpg',
        'https://www.airpano.com/files/mexico-city-2022/images/image5.jpg',
        'https://www.airpano.com/files/mexico-city-2022/images/image6.jpg',
      ],
    ),

    Place(
      id: 7,
      title: 'Île de Sicile',
      desc:
      'Le volcan sicilien est également parmi les plus hauts d\'Europe : environ 3 357 m (11 014 ft). Ce chiffre change constamment, car les éruptions ont toujours lieu, et les roches éjectées donnent de nouvelles formes à la montagne. Et c\'est un autre record pour l\'Etna : peu de volcans sur Terre sont dans un état d\'activité constant. Rien que dans la dernière demi-siècle, le volcan s\'est fait sentir en moyenne tous les ans et demi !',
      location: 'Italie',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/mexico_2022_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/italy-sicily/images/image4.jpg',
        'https://www.airpano.com/files/italy-sicily/images/image1.jpg',
        'https://www.airpano.com/files/italy-sicily/images/image2.jpg',
        'https://www.airpano.com/files/italy-sicily/images/image3.jpg',
      ],
    ),

    Place(
      id: 8,
      title: 'Le Cap',
      desc:
      'L\'un des pays disponibles pour être visité au printemps 2021 était la République d\'Afrique du Sud. Il n\'y avait pas de quarantaine à l\'arrivée, la seule chose dont vous aviez besoin était un test Covid standard. Nous avons donc décidé de prendre un risque et d\'essayer de capturer l\'une des plus belles villes du pays, Le Cap.',
      location: 'Afrique du Sud',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/capetown_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/cape-town/images/image3.jpg',
        'https://www.airpano.com/files/cape-town/images/image2.jpg',
        'https://www.airpano.com/files/cape-town/images/image1.jpg',
        'https://www.airpano.com/files/cape-town/images/image4.jpg',
        'https://www.airpano.com/files/cape-town/images/image5.jpg',
        'https://www.airpano.com/files/cape-town/images/image7.jpg'
      ],
    ),

    Place(
      id: 9,
      title: 'Atoll Caroline',
      desc:
      'L\'atoll Caroline a été le point culminant et la destination principale de mon expédition en catamaran dans l\'océan Pacifique en 2019. Cet atoll se trouve à environ 837 km au nord de Tahiti, mais il est 24 heures en avance dans le temps. Donc, si c\'est lundi à Tahiti, c\'est déjà mardi à Caroline - et techniquement, ceux qui sont sur cet atoll sont en avance sur tout le monde sur Terre dans le temps. Cette croisière n\'avait que deux participants : mon talentueux capitaine polynésien, Teahui, et moi-même, le fou qui en 2018 a eu l\'idée de contacter une compagnie de charter de catamaran tahitienne, Poe Charters, pour aller à cet atoll éloigné. Parmi les capitaines de cette compagnie, personne n\'a jamais été à l\'atoll Caroline, donc quand ce projet a émergé, tous les capitaines se sont disputés pour obtenir le travail. Pas étonnant que le travail ait été donné au meilleur, au plus fou, au capitaine le plus audacieux. Teahui a dit que c\'était une opportunité unique dans sa vie pour lui!',
      location: 'Kiribati',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/caroline_atoll_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/image5.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/image1.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/image9.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/image12.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/image8.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/125.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/116.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/124.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/120.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/118.jpg'
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/115.jpg'
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/image3.jpg'
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/121.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/image11.jpg',
        'https://www.airpano.com/files/caroline-atoll-kiribati/images/image4.jpg'
      ],
    ),

    Place(
      id: 10,
      title: 'Monuments de la province du Yunnan',
      desc:
      'La Chine est le troisième plus grand pays du monde. Il n\'est donc pas étonnant qu\'une grande variété d\'attractions y soient situées : des monuments culturels, naturels et historiques peuvent être trouvés sur son territoire. Certains d\'entre eux, comme la Grande Muraille de Chine, sont largement connus ; d\'autres le sont moins. Cette visite virtuelle AirPano vous présente le "Sud nuageux" : la province montagneuse et pittoresque du Yunnan.',
      location: 'Chine',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/yunnan_province_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/china-yunnan-province/images/image1.jpg',
        'https://www.airpano.com/files/china-yunnan-province/images/image1.jpg',
        'https://www.airpano.com/files/china-yunnan-province/images/image3.jpg',
        'https://www.airpano.com/files/china-yunnan-province/images/image4.jpg',
        'https://www.airpano.com/files/china-yunnan-province/images/image5.jpg',
      ],
    ),


    Place(
      id: 11,
      title: 'Ville de Guatemala',
      desc:
      'Guatemala n\'est pas seulement la plus grande ville du pays, mais aussi de l\'Amérique centrale. La zone de près de 700 kilomètres carrés abrite environ 2,5 millions de personnes tandis que l\'architecture représente une combinaison harmonieuse d\'antiquité et de modernité.',
      location: 'Guatemala',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/guatemala_city_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/guatemala-city/images/image3.jpg',
        'https://www.airpano.com/files/guatemala-city/images/image6.jpg',
        'https://www.airpano.com/files/guatemala-city/images/image2.jpg',
        'https://www.airpano.com/files/guatemala-city/images/image1.jpg',
        'https://www.airpano.com/files/guatemala-city/images/image5.jpg',
        'https://www.airpano.com/files/guatemala-city/images/image4.jpg'
      ],
    ),

    Place(
      id: 12,
      title: 'Fira, île de Santorin',
      desc:
      'La Grèce compte plus de 1000 îles, Santorin (également appelée Thira) étant l\'une des plus célèbres. Elle est mentionnée dans les mythes grecs anciens, et de plus, elle a été le site de l\'une des histoires les plus célèbres sur le viol d\'Europe. Vers 1500 av. J.-C., l\'éruption du volcan de Santorin a changé les frontières de l\'île : le cratère s\'est effondré, formant un énorme entonnoir (caldeira). Finalement, sur les pentes et le sommet de cette montagne à une altitude d\'environ 400 mètres, une ville est née et a reçu le même nom que toute l\'île, Fira (parfois aussi transcrit comme "Thira"). La ville a grandi et s\'est développée jusqu\'à ce qu\'un tremblement de terre dévastateur frappe l\'île en 1956 détruisant plus de 80% de tous les bâtiments. Par la suite, Fira a été reconstruite et ce que nous voyons maintenant est la forme renouvelée de l\'établissement.',
      location: 'Grèce',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/fira_02.jpg',
      otherImgs: [
        'https://www.airpano.com/files/santorini-fira/images/image2.jpg',
        'https://www.airpano.com/files/santorini-fira/images/image3.jpg',
        'https://www.airpano.com/files/santorini-fira/images/image4.jpg',

      ],
    ),

    Place(
      id: 13,
      title: 'Parc national de Vodlozero, République de Carélie',
      desc:
      'La Carélie est connue comme la terre des mille lacs. Mais c\'est une sous-estimation sévère : il y en a au moins 60 000 dans cette région. Les plus grands lacs de cette région sont le lac Ladoga et le lac Onega ; avec eux, il y a un plus petit et moins célèbre mais tout aussi beau lac Vodlozero. Il est situé dans la partie sud-est de la République de Carélie et couvre 358 km².',
      location: 'Russie',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/vodloozero_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/vodlozero/images/image2.jpg',
        'https://www.airpano.com/files/vodlozero/images/image3.jpg',
        'https://www.airpano.com/files/vodlozero/images/image4.jpg',
        'https://www.airpano.com/files/vodlozero/images/image5.jpg',
        'https://www.airpano.com/files/vodlozero/images/image6.jpg',
        'https://www.airpano.com/files/vodlozero/images/image8.jpg'
        'https://www.airpano.com/files/vodlozero/images/image7.jpg'
      ],
    ),


    Place(
      id: 14,
      title: 'Tel Aviv-Yafo',
      desc:
      'Tel Aviv est une ville relativement jeune dont la vie est inextricablement liée à l\'ancienne Jaffa. La visite virtuelle AirPano est dédiée à ces lieux remarquables et pleins de légendes. La première mention enregistrée de Jaffa remonte aux chroniques égyptiennes anciennes datées du 15ème siècle avant J.-C. Son rivage, selon la mythologie grecque ancienne, est réputé avoir été l\'endroit où Andromède a été sauvée par Persée. C\'est l\'endroit d\'où le prophète Jonas a embarqué pour son voyage et pendant que l\'apôtre Pierre était à Jaffa, il a eu une vision ici.',
      location: 'Israël',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/tel_aviv_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/tel-aviv/images/image1.jpg',
        'https://www.airpano.com/files/tel-aviv/images/image6.jpg',
        'https://www.airpano.com/files/tel-aviv/images/image7.jpg',
        'https://www.airpano.com/files/tel-aviv/images/image3.jpg',
        'https://www.airpano.com/files/tel-aviv/images/image2.jpg',
        'https://www.airpano.com/files/tel-aviv/images/image5.jpg',
        'https://www.airpano.com/files/tel-aviv/images/image8.jpg',

      ],
    ),


    Place(
      id: 15,
      title: 'Meknès',
      desc:
      'L\'histoire du Maroc compte quatre capitales : Fès, Marrakech, Rabat et Meknès. Cette dernière a fonctionné comme capitale impériale seulement pendant une courte période, entre 1673 et 1727, mais c\'était la période où le Maroc était le "Versailles". Aujourd\'hui, c\'est un site du patrimoine mondial de l\'UNESCO et cette visite virtuelle AirPano est centrée sur cet endroit unique.',
      location: 'Maroc',
      displayImgSrc: 'https://www.airpano.ru/files/r_450/meknes_01.jpg',
      otherImgs: [
        'https://www.airpano.com/files/meknes/images/image6.jpg',
        'https://www.airpano.com/files/meknes/images/image1.jpg',
        'https://www.airpano.com/files/meknes/images/image2.jpg',
        'https://www.airpano.com/files/meknes/images/image3.jpg',
        'https://www.airpano.com/files/meknes/images/image8.jpg',
        'https://www.airpano.com/files/meknes/images/image4.jpg',

      ],
    ),
  ];
}


//https://www.airpano.com/360photo_list.php     -To get more places