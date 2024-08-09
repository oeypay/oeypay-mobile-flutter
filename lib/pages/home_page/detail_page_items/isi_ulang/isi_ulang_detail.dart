import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_contact_picker/flutter_native_contact_picker.dart';
import 'package:localstorage/localstorage.dart';
import 'package:oepay/common/components/app_bar.dart';
import 'package:oepay/common/components/common_empty.dart';
import 'package:oepay/common/components/common_loading_indicator.dart';
import 'package:oepay/common/components/common_note.dart';
import 'package:oepay/common/components/container_list_harga.dart';
import 'package:oepay/common/components/show_dialog_pembayaran.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/number_format.dart';
import 'package:oepay/common/constant/style_text.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/home_page/detail_page_items/isi_ulang/hasil_transaksi_data.dart';
import 'package:oepay/pages/home_page/detail_page_items/isi_ulang/hasil_transaksi_pulsa.dart';
import 'package:oepay/pages/home_page/detail_page_items/penarikan/bca/konfirmasi_penarikan_otp.dart';
import 'package:oepay/resources/cubit/menu/menu_cubit.dart';
import 'paket_data.dart';

class PulsaScreen extends StatefulWidget {
  const PulsaScreen({super.key});

  @override
  State<PulsaScreen> createState() => _PulsaScreenState();
}

class _PulsaScreenState extends State<PulsaScreen> {
  final FlutterContactPicker _contactPicker = FlutterContactPicker();
  List<Contact>? _contacts;
  bool isPaketDataSelected = false;
  int? selectedPulsaOption;
  String contact = '';
  String brand = '';
  String category = 'Pulsa';
  final TextEditingController _contactController = TextEditingController();
  final LocalStorage storage = LocalStorage('local_data.json');

  @override
  void initState() {
    super.initState();
    _loadPhoneNumber();
  }

  void toggleSelection() {
    setState(() {
      isPaketDataSelected = !isPaketDataSelected;
      selectedPulsaOption = null; // Reset selection when switching tabs
    });
  }

  void selectPulsaOption(int option) {
    setState(() {
      selectedPulsaOption = option;
    });
  }

  void _loadPhoneNumber() async {
    await storage.ready;
    final storedPhone = storage.getItem('user_phone');
    if (storedPhone != null) {
      debugPrint('nomor $storedPhone');
      setState(() {
        _contactController.text = storedPhone;
        contact = storedPhone;
        checkPhoneNumber(storedPhone);
        _fetchData();
      });
    }
  }

  final Map<String, List<String>> phonePrefixes = {
    'by.U': ['085155', '085156', '085157', '085158'],
    'TELKOMSEL': [
      '0811',
      '0812',
      '0813',
      '0821',
      '0822',
      '0823',
      '0851',
      '0852',
      '0853'
    ],
    'XL': ['0817', '0818', '0819', '0859', '0877', '0878'],
    'INDOSAT': ['0814', '0815', '0816', '0855', '0856', '0857', '0858'],
    'TRI': ['0895', '0896', '0897', '0898', '0899'],
    'SMARTFREN': [
      '0881',
      '0882',
      '0883',
      '0884',
      '0885',
      '0886',
      '0887',
      '0888',
      '0889'
    ],
    'AXIS': ['0831', '0832', '0833', '0838', '0859'],
  };

  void checkPhoneNumber(String phoneNumber) {
    setState(() {
      brand = 'Nomor tidak dikenali';
      for (var entry in phonePrefixes.entries) {
        for (var prefix in entry.value) {
          if (phoneNumber.startsWith(prefix)) {
            setState(() {
              brand = entry.key;
            });
            if (_contactController.text.length == 7 || phoneNumber.length > 6) {
              _fetchData();
            }
            return;
          }
        }
      }
    });
  }

  final MenuCubit _menuCubit = MenuCubit();

  void _fetchData() async {
    await _menuCubit.getProduct(brand: brand, category: category);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / .7;
    final double itemHeightOnly = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidthOnly = size.width / .3;

    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: const AppbarDefault(
        title: 'Pulsa & Paket Data',
        bgColor: ColorName.yellowColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderInput(
              brand: brand,
              onChanged: (value) {
                contact = value;
                if (value.length == 7) checkPhoneNumber(contact);
                if (value.length < 7) {
                  setState(() {
                    brand = '';
                  });
                }
                print(
                    'data $brand - $contact - $category - leght ${_contactController.text.length}');
              },
              controller: _contactController,
              pressprefixIcon: () async {
                Contact? contact = await _contactPicker.selectContact();
                setState(() {
                  if (contact != null) {
                    _contacts = [contact];
                    String phoneNumber = contact.phoneNumbers!.single;

                    // Menghapus tanda '+', '-', ' '
                    phoneNumber = phoneNumber.replaceAll('+', '');
                    phoneNumber = phoneNumber.replaceAll('-', '');
                    phoneNumber = phoneNumber.replaceAll(' ', '');

                    // Mengganti '62' di awal nomor menjadi '0'
                    if (phoneNumber.startsWith('62')) {
                      phoneNumber = '0${phoneNumber.substring(2)}';
                      debugPrint('nmr $phoneNumber');
                    }
                    checkPhoneNumber(phoneNumber);

                    _contactController.text = phoneNumber;
                  } else {
                    _contacts = [];
                  }
                });
              },
              presssuffixIcon: () {
                _contactController.clear();
                setState(() {
                  brand = '';
                });
              },
            ),
            Row(
              children: [
                ButtonCategoryProduct(
                  label: 'Isi Pulsa',
                  press: () {
                    if (isPaketDataSelected) toggleSelection();
                    setState(() {
                      category = 'Pulsa';
                    });
                    _fetchData();
                  },
                  active: !isPaketDataSelected ? true : false,
                ),
                const Space(16.0),
                ButtonCategoryProduct(
                  label: 'Paket Data',
                  press: () {
                    if (!isPaketDataSelected) toggleSelection();
                    setState(() {
                      category = 'Data';
                    });
                    _fetchData();
                  },
                  active: isPaketDataSelected ? true : false,
                ),
              ],
            ),
            const Space(10.0),
            _contactController.text.length < 7 ||
                    brand == 'Nomor tidak dikenali'
                ? Expanded(
                    child: ListView(
                    children: const [
                      CommonNote(
                        title: "Masukan Nomor Hp",
                        msg: 'Dapatkan harga terbaik !!!',
                      ),
                    ],
                  ))
                : Expanded(
                    child: BlocBuilder<MenuCubit, MenuState>(
                    bloc: _menuCubit,
                    builder: (context, state) {
                      if (state.status.isInitializedOrLoading()) {
                        return const CommonLoadingIndicator();
                      }
                      if (state.status.isFailed()) {
                        return ListView(
                          children: [
                            // const CommonFailed(),
                            CommonEmpty(
                              pressReload: () {
                                _fetchData();
                              },
                            ),
                          ],
                        );
                      }
                      if (state.status.isEmpty()) {
                        return ListView(
                          children: [
                            CommonEmpty(
                              pressReload: () {
                                _fetchData();
                              },
                            ),
                          ],
                        );
                      }
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            // Pulsa options
                            if (!isPaketDataSelected)
                              GridItems(
                                childAspectRatio: (itemWidth / itemHeight),
                                items: [
                                  for (var item in state.getListProduct!)
                                    Containerlistharga(
                                      press: () => showCustomBottomSheet(
                                          context: context,
                                          titleHarga: 'Harga',
                                          noHp: '085676445776',
                                          pulsaData: '10.000',
                                          transaksi: 'Rp.0',
                                          hargaPrice: 'Rp.15.000',
                                          totalPembayaran: 'Rp.15.000',
                                          saldoOeyPay: 'Rp.20.000',
                                          onPayPressed: () {
                                            // customShowDialog(context);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Konfirmasipenarikanotp(
                                                  onConfirmation: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Hasiltransaksipulsa(),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          }),
                                      price: formatNumber(int.parse(
                                          '${item.name?.replaceAll(RegExp(r'[A-Za-z\s]'), '')}')),
                                      harga: 'Harga',
                                      totalHarga:
                                          'Rp ${formatNumber(item.price ?? 0)}',
                                      discount: '10%',
                                      discountedPrice: 'Rp 7.000',
                                    ),
                                ],
                              )
                            else
                              // Paket Data options
                              GridItems(
                                crossAxisCount: 1,
                                childAspectRatio:
                                    (itemWidthOnly / itemHeightOnly),
                                items: [
                                  for (var item in state.getListProduct!)
                                    PaketData(
                                      price: formatNumber(int.parse(
                                          '${item.name?.replaceAll(RegExp(r'[A-Za-z\s]'), '')}')),
                                      discount: '2%',
                                      discountedPrice: "Rp 21.000",
                                      title: item.name,
                                      desc: item.description,
                                      pressCard: () => showCustomBottomSheet(
                                          context: context,
                                          titleHarga:
                                              'BRONET 24 Jam 1GB 1Hr + ....',
                                          noHp: '085676445776',
                                          // pulsaData: '10GB + 20GB',
                                          transaksi: 'Rp.0',
                                          hargaPrice: 'Rp.15.000',
                                          totalPembayaran: 'Rp.15.000',
                                          saldoOeyPay: 'Rp.20.000',
                                          onPayPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Konfirmasipenarikanotp(
                                                  onConfirmation: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const HasiltransaksiData(),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          }),
                                      pressDetail: () {
                                        showModalBottomSheet(
                                            context: context,
                                            backgroundColor: Colors.white,
                                            builder: (BuildContext context) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30,
                                                    right: 20,
                                                    top: 20),
                                                child: SizedBox(
                                                  height: 230,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                            Icons.close),
                                                      ),
                                                      Text(
                                                        'BRONET 24 Jam 1GB 1Hr + Bonus Lokal Kuota',
                                                        style: CustomTextStyles
                                                            .textButton,
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      Text(
                                                        'Main Kuota 1 GB 1 hari selama 24 Jam disemua jaringan 2G/3G/4G. BONUS Lokal Kuota sesaui dengan area/lokasi',
                                                        style: CustomTextStyles
                                                            .titleProfil,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                    ),
                                ],
                              ),
                          ],
                        ),
                      );
                    },
                  ))
          ],
        ),
      ),
    );
  }
}

class HeaderInput extends StatelessWidget {
  final void Function()? pressprefixIcon, presssuffixIcon;
  final String? brand;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  const HeaderInput({
    super.key,
    this.brand,
    this.controller,
    this.pressprefixIcon,
    this.presssuffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          if (brand != '')
            Row(
              children: [
                const Icon(Icons.phone_android, color: Colors.red),
                const SizedBox(width: 16.0),
                Text(
                  brand ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              controller: controller,
              onChanged: onChanged,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 30),
                filled: true,
                fillColor: const Color(0xffFEF7dd),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: IconButton(
                  onPressed: pressprefixIcon,
                  icon: const Icon(Icons.contacts),
                ),
                hintText: 'Nomor Ponsel',
                suffixIcon: controller!.text.isNotEmpty
                    ? IconButton(
                        onPressed: presssuffixIcon,
                        icon: const Icon(Icons.close),
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonCategoryProduct extends StatelessWidget {
  final void Function()? press;
  final bool? active;
  final String? label;
  const ButtonCategoryProduct(
      {super.key, this.active = false, this.press, this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          backgroundColor: active! ? ColorName.yellowColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          label ?? '',
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class GridItems extends StatelessWidget {
  final double? childAspectRatio;
  final int? crossAxisCount;
  final List<Widget>? items;
  const GridItems(
      {super.key, this.childAspectRatio, this.crossAxisCount, this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: crossAxisCount ?? 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: childAspectRatio ?? 5 / 4.5,
      padding: const EdgeInsets.all(2),
      children: items ?? [],
    );
  }
}
