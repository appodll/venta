import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/CustomVideoPlayer.dart';
import 'package:venta/Constant/DashBoard_Elements/ContentPageFile/ContentPageButtonElement.dart';
import 'package:venta/Constant/StaticText.dart';

class Contentpage extends StatefulWidget {
  final id;
  final type;

  Contentpage({super.key, required this.id, required this.type});

  @override
  State<Contentpage> createState() => _ContentpageState();
}

class _ContentpageState extends State<Contentpage> {
  var _carouselController = CarouselSliderController();

  var image_list = [
    "https://www.w3schools.com/html/mov_bbb.mp4",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/%C5%9Eu%C5%9Fa_qalas%C4%B1_2024-c%C3%BC_ilin_aprelind%C9%99.jpg/1200px-%C5%9Eu%C5%9Fa_qalas%C4%B1_2024-c%C3%BC_ilin_aprelind%C9%99.jpg",
    "https://unikal.org/photos/unikal/1584035752.news_20200312090635.jpg",
    "https://www.petmate.com/cdn/shop/files/cat_nine_lives.jpg?v=1718820487&width=1920"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: widget.type != 'news'?Contentpagebuttonelement(
        title: "Müraciət göndər",
        icon: "lib/Asset/send.png",
        onPress: (){},
        ):null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("lib/Asset/back.png"))),
                      ),
                    ),
                    Row(
                      children: [
                        Statictext(
                          text: "Xəbərlər",
                          size: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          width: 35,
                        )
                      ],
                    ),
                    Container()
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 8,
                        offset: Offset(5, 7),
                      ),
                      ]
                    ),
                    child: CarouselSlider.builder(
                      carouselController: _carouselController,
                      itemCount: image_list.length,
                      itemBuilder: (context, index, realIndex) {
                        return image_list[index].endsWith('.mp4')
                            ? ChewieVideoPlayer(
                                video_url: image_list[index],
                              )
                            : Container(
                                height: 275,
                                child: CachedNetworkImage(
                                  imageUrl: image_list[index],
                                  placeholder: (context, url) => Center(
                                      child: CircularProgressIndicator()),
                                  errorWidget: (context, url, error) =>
                                      Center(child: Icon(Icons.error)),
                                  fit: BoxFit.cover,
                                ),
                              );
                      },
                      options: CarouselOptions(
                        height: 275,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: true,
                        autoPlay: false,
                        onPageChanged: (index, reason) {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _carouselController.previousPage();
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("lib/Asset/sol.png"))),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _carouselController.nextPage();
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("lib/Asset/sag.png"))),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/Asset/venta.png"))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Statictext(
                                text: "Venta",
                                size: 13,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 11,
                                    width: 11,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "lib/Asset/map.png"))),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Statictext(text: "Bakı", size: 12)
                                ],
                              )
                            ],
                          ),
                          widget.type == "vacancy"?Row(
                            children: [
                              Statictext(
                                text: "500-600",
                                size: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 13,
                                height: 13,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "lib/Asset/manat.png"))),
                              )
                            ],
                          ):Container()
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Statictext(
                        text:
                            "Şirkət haqqında Sevimli pizzanızı seçin, online sifariş edin. bu indi domino’s tətbiqi iıə mümkündür! siz online olaraq öz pizzanızın inqridientlərini, xəmir tipini, çörəkləri, qəlyanaltıları, sousları və içkiləri mobil tətbiqdən seçib sifariş edə bilərsiniz. zəngin pizza çeşidləri və ən yaxşı dad Azərbaycanda! Namizədə tələblər:",
                        size: 14)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
