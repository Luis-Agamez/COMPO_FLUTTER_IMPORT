import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imgUrl;
  final String? name;
  const CustomCardType2({Key? key, required this.imgUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        shadowColor: AppTheme.primary.withOpacity(.5),
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(imgUrl),
              placeholder: const AssetImage('assets/loading3.gif'),
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name != null)
              Container(
                  alignment: AlignmentDirectional.center,
                  padding:
                      const EdgeInsets.only(right: 15, top: 10, bottom: 10),
                  child: Text(name ?? 'Image'))
          ],
        ));
  }
}
