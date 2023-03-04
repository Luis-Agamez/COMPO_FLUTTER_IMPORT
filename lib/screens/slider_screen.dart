import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Column(children: [
        Slider.adaptive(
          min: 50,
          max: 400,
          value: _sliderValue,
          activeColor: AppTheme.primary,
          onChanged: _sliderEnabled
              ? (value) {
                  _sliderValue = value;
                  setState(() {});
                }
              : null,
        ),
        // Checkbox(
        //     value: _sliderEnabled,
        //     onChanged: (value) {
        //       _sliderEnabled = value ?? true;
        //       setState(() {});
        //     }),
        CheckboxListTile(
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            activeColor: AppTheme.primary,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }),
        // Switch(
        //     value: _sliderEnabled,
        //     activeColor: AppTheme.primary,
        //     onChanged: (value) {
        //       _sliderEnabled = value;
        //       setState(() {});
        //     }),
          const AboutListTile(),
        SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            activeColor: AppTheme.primary,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            }),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
