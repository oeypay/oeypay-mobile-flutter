import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/components/common_empty.dart';
import 'package:oepay/common/components/common_failed.dart';
import 'package:oepay/common/components/common_loading_indicator.dart';
import 'package:oepay/resources/cubit/pages_menu/pages_cubit.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({super.key});

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  final PagesCubit _pagesCubit = PagesCubit();
  String idCategory = 'ea06d32a-00b1-4c26-af77-2447245a755c';
  final String defaultImages =
      "https://is3.cloudhost.id/oey/pages/1723092768_banner1.png";
  // "assets/images/banner2.png",
  // "assets/images/banner3.png",

  void _fetchData() async {
    await _pagesCubit.getBanner(categoryId: idCategory);
  }

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PagesCubit, PagesState>(
      bloc: _pagesCubit,
      builder: (context, state) {
        if (state.status.isInitializedOrLoading()) {
          return const CommonLoadingIndicator();
        }
        if (state.status.isFailed()) {
          return const CommonFailed();
        }
        if (state.status.isEmpty()) {
          return CommonEmpty(
            pressReload: () {
              _fetchData();
            },
          );
        }
        // var images = state.getListPages;

        // data.map((item) => item.image).toList();

        return CarouselSlider(
            options: CarouselOptions(
              height: 120,
              autoPlay: false,
              enableInfiniteScroll: true,
              viewportFraction: 0.7,
            ),
            items: [
              for (var images in state.getListPages!)
                Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 120,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(images.image ?? defaultImages),
                          fit: BoxFit
                              .contain, // Mengatur gambar agar tidak tercrop
                        ),
                      ),
                    );
                  },
                ),
            ]);
      },
    );
  }
}
