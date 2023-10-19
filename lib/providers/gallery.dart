import 'package:flutter/foundation.dart';
import 'package:tour_360/models/gallery.dart';

class GalleryData extends ChangeNotifier {
  Gallery findById(int id) {
    return _galleries.firstWhere(
      (area) => area.id == id,
    );
  }

  getGalleries() {
    return [..._galleries];
  }

  final _galleries = [
    Gallery(
      id: 1,
      title: 'Parc Central',
      location: 'New York, USA',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_1550/36_645994.jpg',
    ),
    Gallery(
      id: 2,
      title: 'Riomaggiore',
      location: 'Cinque Terre, Italie',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_078202.jpg',
    ),
    Gallery(
      id: 3,
      title: 'Amphithéâtre Principal',
      location: 'USA',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_149426.jpg',
    ),
    Gallery(
      id: 4,
      title: 'Temple du Lotus',
      location: 'Delhi, Inde',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_390689.jpg',
    ),
    Gallery(
      id: 5,
      title: "Chutes d'Iguazu",
      location: 'Argentine-Brésil',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_150203.jpg',
    ),
    Gallery(
      id: 6,
      title: 'Ville de Shanghai',
      location: 'Shanghai, Chine',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_688878.jpg',
    ),
    Gallery(
      id: 7,
      title: 'Trinité Lavra de St. Sergius',
      location: 'Sergiyev Posad, Russie',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_429603.jpg',
    ),
    Gallery(
      id: 8,
      title: 'Buenos Aires',
      location: 'Argentine',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_135613.jpg',
    ),
    Gallery(
      id: 9,
      title: "Chutes d'Iguazu",
      location: 'Argentine-Brésil',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_150203.jpg',
    ),
    Gallery(
      id: 10,
      title: 'Étoile du Kremlin',
      location: 'Inconnu',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_455896.jpg',
    ),
    Gallery(
      id: 11,
      title: 'Place de la Cathédrale',
      location: 'Inconnu',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_472878_ThebestAirPanophotos.jpg',
    ),
    Gallery(
      id: 12,
      title: 'Ville de Shanghai',
      location: 'Shanghai',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_150_vert/36_113374_ThebestAirPanophotos.jpg',
    ),
    Gallery(
      id: 13,
      title: 'Ville de Singapour',
      location: 'Singapour',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_1550/36_678320_ThebestAirPanophotos.jpg',
    ),
    Gallery(
      id: 14,
      title: "Les aigles d'or volent au-dessus de la Place Rouge",
      location: 'Moscou',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_1550/36_355253_ThebestAirPanophotos.jpg',
    ),
    Gallery(
      id: 15,
      title: 'Swaminarayan Akshardham',
      location: 'Delhi, Inde',
      displayImgSrc:
          'https://www.airpano.com/photogallery/images_1550/36_690858.jpg',
    )
  ];
}


