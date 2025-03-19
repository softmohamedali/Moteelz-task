import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/presentation/pages/wallet/widgets/wallet_filter_dialog.dart';
import 'package:moteelz/presentation/pages/wallet/widgets/wallet_item.dart';
import 'package:moteelz/presentation/widgets/search_text_field.dart';

import '../../../core/ui/app_dimen.dart';
import '../../widgets/button_text_icon.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the wallet items
    final Map<String, dynamic> walletData =
      {
        'cardNumber': '1234 5678 9009 8765',
        'validThru': '08/25',
        'daysNumber': '7',
        'holderName': 'HOLDER NAME',
        'cardType': 'المعارض والمؤتمرات',
        'price': 2600,
        'features': [
          'إهداء الليالي للعائلة والأصدفاء',
          'الحجز في أكثر من دولة',
          'تثبيت الأسعار طول فترة صلاحية المحفظة',
        ],
      };

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        title: SearchTextField(
          controller: TextEditingController(),
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.startFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: FilterButton(
          text: 'التصفية',
          svgString: 'assets/icons/filter.svg',
          onPressed: (){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const FilterDialog();
              },
            );
          },
        ),
      ),
      body: Padding(
        padding:  const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: 4,
          separatorBuilder: (context, index) =>  Container(
            height:AppDimens.h16,
          ),
          itemBuilder: (context, index) {
            final item = walletData;
            return WalletItem(
              cardNumber: item['cardNumber'],
              validThru: item['validThru'],
              daysNumber: item['daysNumber'],
              holderName: item['holderName'],
              cardType: item['cardType'],
              price: (item['price'] as int).toDouble(),
              features: List<String>.from(item['features']),
            );
          },
        ),
      ),
    );
  }

}


