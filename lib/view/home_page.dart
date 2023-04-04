import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/cart_dection.dart';
import 'package:food_delivery/widgets/category.dart';
import 'package:food_delivery/widgets/city_section.dart';
import 'package:food_delivery/widgets/most_requested.dart';
import 'package:food_delivery/widgets/re_order_widget.dart';
import 'package:food_delivery/widgets/search_section.dart';
import 'package:food_delivery/widgets/special_offer.dart';
import 'package:food_delivery/widgets/title.dart';
import 'package:food_delivery/widgets/you_may_like.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
        );
      }
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.02,
            vertical: size.height * 0.01,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const CitySection(),
              Row(
                children: [
                  SearchSection(
                    width: size.width / 1.3,
                    height: size.height * 0.065,
                  ),
                  SizedBox(width: size.width * 0.03),
                  CartSection(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.01,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              OffersContainer(
                height: size.height / 3,
                width: size.width,
              ),
              Titles(
                paddingHeight: size.height * 0.02,
                text: " الاقسام",
              ),
              Flexible(
                child: SizedBox(
                  height: size.height / 6,
                  width: size.width,
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: 4,
                    shrinkWrap: true,
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => Category(
                          height: 120,
                          width: 150,
                          bottom: size.height * 0.01,
                          left: size.width / 6.5,
                        )),
                  ),
                ),
              ),
              Titles(
                paddingHeight: size.height * 0.02,
                text: "اعاده الطلب",
              ),
              Flexible(
                child: SizedBox(
                  height: size.height / 6,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => ReordingWidget(
                          height: 120,
                          width: 150,
                          leftPadding: size.width * 0.04,
                        )),
                  ),
                ),
              ),
              Titles(
                paddingHeight: size.height * 0.02,
                text: "الاكثر طلبا",
              ),
              Flexible(
                child: SizedBox(
                  height: size.height / 3,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => MostRequestedOrder(
                          width: size.width / 1.5,
                          heightImage: size.height * 0.2,
                        )),
                  ),
                ),
              ),
              Titles(
                paddingHeight: size.height * 0.02,
                text: "قد يعجبك",
              ),
              Flexible(
                child: SizedBox(
                  height: size.height / 4,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => YouMayLike(
                          width: size.width / 3,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
