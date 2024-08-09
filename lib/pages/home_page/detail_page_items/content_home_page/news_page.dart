import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/constant/styleText.dart';

import '../../../../common/components/common_empty.dart';
import '../../../../common/components/common_failed.dart';
import '../../../../common/components/common_loading_indicator.dart';
import '../../../../resources/cubit/pages_menu/pages_cubit.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final PagesCubit _pagesCubit = PagesCubit();
  String idCategory = '521e43c3-cbc1-441c-a043-c5bd2923539b';
  final String defaultImages =
      "https://is3.cloudhost.id/oey/pages/1723092768_banner1.png";

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rekomendasi Pilihan',
          style: CustomTextStyles.titlesection,
        ),
        const SizedBox(height: 20),
        BlocBuilder<PagesCubit, PagesState>(
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
            return SizedBox(
              height: 280.0, // Atur tinggi sesuai kebutuhan
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var item in state.getListPages!)
                    PromoCard(
                      title: item.title ?? '',
                      imageUrl: item.image ?? '',
                      description: item.description ?? '',
                      buttonLabel: item.content ?? '',
                    ),
                  SizedBox(width: 16.0),
                  SizedBox(width: 15),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class PromoCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final String buttonLabel;

  const PromoCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0, // Atur lebar sesuai kebutuhan
      // height: 350.0, // Atur tinggi sesuai kebutuhan
      // padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(15)),
            child: Image.network(
              imageUrl,
              // width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Text(
              title,
              style: CustomTextStyles.titlesection,
              softWrap: true,
            ),
          ),
          // const SizedBox(height: 8.0),
          // Padding(
          //   padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          //   child: Text(
          //     description,
          //     style: const TextStyle(fontSize: 14.0),
          //     softWrap: true,
          //   ),
          // ),
        ],
      ),
    );
  }
}
