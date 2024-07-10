import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int currentCarouselIndex = 0;
  List<String> carouselItems = [
    "https://s3-alpha-sig.figma.com/img/0b37/2c37/6f5055776aa2c0c8bc93aa3d12bced2b?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WK7NtkURRngi4BBBT3os5V0m6y9nXirH4yWE9LNL5RcpXf7ACovU-D2-Wun315RTYSFTdg4rBYvNPAdgKHLFN7lKVAK1eo1WYMFaCjSH~nA-~fTtdnakvwv4MU1ZNnp54qpKw5fAkKTt8gw6c2T5tgw3RUffm04MT1ReBaKf24znyvQnyMxzN7lxkYX5OERM0Mcbn2J-i~4LCqNOz1~NFuom7EsvcMrOMSDhwjiuhGFplgTztjVOo4puPWAxtQn-wglpg7lZP43nezgtOrXCgTRE4DQB2AC0gK6~wzgNstr1AHQo9L1Ke6Dejt5FAWGx-RUESFfuN0oIoLoTO49vKA__",
    "https://s3-alpha-sig.figma.com/img/65fc/0caf/5e82fb1e667d5d8d1006d43778406bf7?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=K6F0CdcD1UgZlcZ~ty2Bi--yeIiZQ4Aj-KHy075OCz4hUhiTMMjmebNPbv-E0D-WNwOCOI3X9WtVqll8JOBnEcaJyqLGGmS2L~NlT-e-bA-IXhYngPt-pvma6apf9adQJ4oJQbou6SMF6hqZ7RMbtGBAgPBatv-S7~aQGkV6t3B~klexxn66revjLMMWkbNrZORyKOnQuDuus2FuhEw98PcX0z2DiAhMPOA0bP~cIhRH58saUKhMdd7IBgUUowYrQoFuf1bFUDFKTeS6UqRvK1VhYyCcSdEJMpTFO9t9AbDGaLPDs41OX2Sj62Qq-Jl~3aRnnjB8tboZw9VMh9ZgSA__",
    "https://s3-alpha-sig.figma.com/img/0fc3/11a5/47b1d21f2261630513420c15ea476a8c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bNFo24gsLMgkstadIbuSfVZeab-wPeAmLhoJHVBwi1N7QaXThVMplsoRGInQZHmx8I9TMVZTyARqRpE--2UDoHYohBydyN38UmntFnGBekvHzHFijMMpJ2FXCtMaWPYFkKT85-Wg2OfpMjlKmfI0I4mET3nYrS4MjxqSX9sM3ma7VdPJFOlACrJClnYGUyMqffSH43L2VrytXzH9F5cj3hteBowTlVIym16FtSomTYBhZsvn7-RMkGUJas7EUeNWRv178ciqviugNa4Hcf-h6NS0NUEH-rgf2Yv3kpqPk5Q7IBq5YC~5~ORUOk09M9AeyRmVVtZrLR9SWjjgQe9wTw__",
    "https://s3-alpha-sig.figma.com/img/65fc/0caf/5e82fb1e667d5d8d1006d43778406bf7?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=K6F0CdcD1UgZlcZ~ty2Bi--yeIiZQ4Aj-KHy075OCz4hUhiTMMjmebNPbv-E0D-WNwOCOI3X9WtVqll8JOBnEcaJyqLGGmS2L~NlT-e-bA-IXhYngPt-pvma6apf9adQJ4oJQbou6SMF6hqZ7RMbtGBAgPBatv-S7~aQGkV6t3B~klexxn66revjLMMWkbNrZORyKOnQuDuus2FuhEw98PcX0z2DiAhMPOA0bP~cIhRH58saUKhMdd7IBgUUowYrQoFuf1bFUDFKTeS6UqRvK1VhYyCcSdEJMpTFO9t9AbDGaLPDs41OX2Sj62Qq-Jl~3aRnnjB8tboZw9VMh9ZgSA__",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
            items: carouselItems
                .map(
                  (e) => Image.network(
                    e,
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                height: 220,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentCarouselIndex = index;
                  });
                })),
        Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                carouselItems.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2.5),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(
                      index == currentCarouselIndex ? 1 : 0.5,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: index == currentCarouselIndex ? 9 : 4,
                  height: 4,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
