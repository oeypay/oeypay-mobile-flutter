import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/components/common_empty.dart';
import 'package:oepay/common/components/common_failed.dart';
import 'package:oepay/common/components/common_loading_indicator.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/resources/cubit/pages_menu/pages_cubit.dart';

class RekomendasiPage extends StatefulWidget {
  const RekomendasiPage({super.key});

  @override
  State<RekomendasiPage> createState() => _RekomendasiPageState();
}

class _RekomendasiPageState extends State<RekomendasiPage> {
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
          'Kenali OeyPay Lebih Dekat',
          style: CustomTextStyles.titlesection,
        ),
        const SizedBox(height: 8.0),
        const Text(
          'Biar makin akrab, yuk cek tips berikut!',
          style: TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 16.0),

        // Tips Cards
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
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var item in state.getListPages!)
                    TipsCard(
                      title: item.title ?? '',
                      imageUrl: item.image ?? '',
                    ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class TipsCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const TipsCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.network(imageUrl)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: CustomTextStyles.titlesection,
            ),
          ),
        ],
      ),
    );
  }
}
