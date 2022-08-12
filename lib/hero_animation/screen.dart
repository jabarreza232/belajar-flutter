import 'package:belajar_flutter/hero_animation/pixabay-data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    ImageData.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Animasi Hero'),
      ),
      body: ListView.separated(
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/detail",
                      arguments: ImageData.pixabay[index]);
                },
                child: ListTile(
                  leading: Hero(
                    tag: ImageData.pixabay[index].id,
                    child: Image.network(ImageData.pixabay[index].imageLarge,width: 60,height: 60,fit:BoxFit.cover,),
                    transitionOnUserGestures: true,
                  ),
                  title: Text(ImageData.pixabay[index].title),
                  subtitle: Text(ImageData.pixabay[index].author),
                ),
              ),
          separatorBuilder: (context, position) {
            return Divider();
          },
          itemCount: ImageData.pixabay.length),
    );
  }
}

class DetailPage extends StatelessWidget {
  final pixabay;
  DetailPage(this.pixabay);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Gambar'),
      ),
      body: Center(
        child: Hero(
          tag: pixabay.id,
          child: Image.network(pixabay.imageLarge),
        ),
      ),
    );
  }
}
