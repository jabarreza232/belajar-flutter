class ImageData {
  int id;
  String title;
  String author;
  String imageLarge;

  ImageData({required this.id,required this.title,required this.author,required this.imageLarge});

  static List<ImageData> pixabay=[];

  static init() {
    pixabay = [];
    pixabay.add(ImageData(
        id: 1,
        title: "Tupai",
        author: "Capri23auto",
        imageLarge:
            'https://assets.petpintar.com/cache/720/540/article/519/1626511824-perbedaan-tupai-dan-bajing-banner.jpg'));
    pixabay.add(
      ImageData(
          id: 2,
          title: 'Anggur',
          author: 'NickyPe',
          imageLarge:
              'https://blogpictures.99.co/manfaat-anggur-merah.jpg'),
    );
    pixabay.add(
      ImageData(
          id: 3,
          title: 'Pemandangan',
          author: 'Sonyuser',
          imageLarge:
              'https://www.visa.co.id/dam/VCOM/regional/ap/indonesia/global-elements/marquees/marquee-wonderful-indonesia-640x640.jpg'),
    );
    pixabay.add(
      ImageData(
          id: 4,
          title: 'Kucing Oren',
          author: 'Alexas_Fotos',
          imageLarge:
              'https://www.fajarpendidikan.co.id/wp-content/uploads/2022/01/Kucing-Oren.jpg'),
    );
    pixabay.add(
      ImageData(
          id: 5,
          title: 'Burung',
          author: 'Derweg',
          imageLarge:
              'https://d1bpj0tv6vfxyp.cloudfront.net/articles/693783_19-4-2021_10-4-17.png'),
    );
  }
}
