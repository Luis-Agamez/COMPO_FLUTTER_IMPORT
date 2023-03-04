import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card AppBar')),
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imgUrl:
                  'http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg',
              name: 'Austria',
            ),
            CustomCardType2(
              imgUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg',
              name: 'Francia',
            ),
            CustomCardType2(
              imgUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-18511-Miller-Yao-moon-goes-down.jpg',
              name: 'Moscow',
            ),
            CustomCardType2(
                imgUrl:
                    'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-2nd-JoshuaSnow-1.jpg'),
            CustomCardType2(
              imgUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-3rd-IsabellaTabacchi-1.jpg',
              name: 'Polonia',
            ),
            CustomCardType2(
              imgUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-Photo3rd-Chance-Allred-Hanksville-Utah-Sunset.jpg',
              name: 'Egipto',
            ),
            CustomCardType2(
              imgUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-23216-Christopher-Anderson-Evening-Refection.jpg',
              name: 'Versalles',
            ),
          ]),
    );
  }
}
