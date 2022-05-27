class HomeMenu {
  final String title;
  final String subtitle;
  final String image;
  final String routeid;
  final String mainImage;

  HomeMenu({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.routeid,
    required this.mainImage,
  });
}

final List<HomeMenu> homeMenu = [
  HomeMenu(
      title: 'Doa Sehari',
      subtitle: 'Ini adalah kumpulan Doa yang digunakan setiap hari',
      image: 'images/Hari.png',
    routeid: 'DoaHari',
    mainImage: 'images/BAR Ki.png'
  ),
  HomeMenu(title: 'Doa Pagi',
      subtitle: 'Ini adalah kumpulan Doa yang digunakan saat pagi hari',
      image: 'images/Pagi.png',
    routeid: 'DoaPagi',
    mainImage: 'images/BAR Ke.png'
  ),
  HomeMenu(title: 'Doa Petang',
      subtitle: 'Ini adalah kumpulan Doa yang digunakan saat petang hari',
      image: 'images/Petang.png',
    routeid: 'DoaPetang',
    mainImage: 'images/BAR Ko.png'
  )
];