import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/components/app_bar.dart';
import 'package:oepay/common/components/common_empty.dart';
import 'package:oepay/common/components/common_failed.dart';
import 'package:oepay/common/components/common_loading_indicator.dart';
import 'package:oepay/common/components/container_item.dart';
import 'package:oepay/common/components/flushbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/variables.dart';
import 'package:oepay/pages/home_page/detail_page_items/isi_ulang/isi_ulang_detail.dart';
import 'package:oepay/resources/cubit/menu/menu_cubit.dart';

class ItemLainnyaPage extends StatefulWidget {
  const ItemLainnyaPage({super.key});

  @override
  State<ItemLainnyaPage> createState() => _ItemLainnyaPageState();
}

class _ItemLainnyaPageState extends State<ItemLainnyaPage> {
  final MenuCubit _menuCubit = MenuCubit();

  void _fetchData() async {
    await _menuCubit.getAllMenus();
  }

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppbarDefault(
        bgColor: ColorName.yellowColor,
        title: 'Semua Layanan',
      ),
      body: BlocBuilder<MenuCubit, MenuState>(
        bloc: _menuCubit,
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
          return RefreshIndicator(
            color: ColorName.grey,
            onRefresh: () async {
              _fetchData();
            },
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  for (var item in state.getListMenu!)
                    CustomGridPage(
                      sectionTitle: item.name,
                      items: [
                        if (item.provider != null)
                          for (var provider in item.provider!)
                            CustomGridItemWidget(
                              category: item.name,
                              images: provider.icon ?? defaultFotoSvg,
                              title: provider.name,
                              onTap: () {
                                provider.name == 'Pulsa & Data'
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PulsaScreen()),
                                      )
                                    : showSnackBar(context,
                                        msg: 'Layanan ini belum tersedia !!!');
                              },
                            ),
                      ],
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
