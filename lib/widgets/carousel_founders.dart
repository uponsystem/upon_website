import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:upon_site/widgets/founders_tile.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final imgList = ['uno', 'dos', 'tres', 'quatro'];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: const [
            FoundersTile(
              imageAsset: 'assets/chico.png',
              founderName: 'Francisco Gabriel',
              founderDescription:
                  'Experienced mobile developer with years of practice,\nhis linguistic ability and solid technical knowledge make\nhim a valuable asset to Upon, contributing to innovation\nand efficiency in each project.',
            ),
            FoundersTile(
              imageAsset: 'assets/raffa.png',
              founderName: 'Raffaela de Castro',
              founderDescription:
                  'Computer engineer from Universidade Ceuma and mobile developer\nwith more than 3 years of experience. His ability to create exceptional\nmobile solutions contributes significantly to Upon progressive vision,\nleading the development of exceptional digital experiences.',
            ),
            FoundersTile(
              imageAsset: 'assets/dantas.png',
              founderName: 'Emmanuel Dantas',
              founderDescription:
                  'Computer engineer from Universidade Ceuma with more than \n3 years of experience, he is a dedicated member of Upon.\nHis solid academic background and commitment to excellence \nhighlight him as a key player in the development of innovative\ndigital solutions.',
            ),
            FoundersTile(
              imageAsset: 'assets/guilherme.png',
              founderName: 'Guilherme Beckham',
              founderDescription:
                  'Graduating in BICT at UFMA, he is an experienced back-end \ndeveloper with more than 3 years of experience. His solid\nacademic background and commitment to quality make him\nessential to the Upon team, driving the success of our projects.',
            ),
          ],
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: false,
            height: 380,
            viewportFraction: 1,
            autoPlayAnimationDuration: const Duration(seconds: 5),
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return InkWell(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12.0,
              height: 12.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black).withOpacity(_current == entry.key ? 0.9 : 0.4),
              ),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
