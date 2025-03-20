import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../../core/ui/app_dimen.dart';
import '../../../../core/utils/helpers.dart';
import '../../../../data/dto/wallet_details_response/wallet_details_model/wallet_details_model.dart';
import '../../../../data/dto/wallets_response/wallet_model/day_option/dey_option.dart';
import '../../../widgets/dotted_divider.dart';
import '../../../widgets/m_text.dart';
import '../../../widgets/moteelz_container_details.dart';

class PriceDetailsSection extends StatelessWidget {
  final WalletDetailModel wallet;
  final DayOption dayOption;
  final double discount;

  const PriceDetailsSection({
    super.key,
    required this.wallet,
    required this.dayOption,
    required this.discount
  });



  @override
  Widget build(BuildContext context) {
    double  price=(double.parse(dayOption.days))*(wallet.price);
    final discountAmount = price * discount;
    final finalPrice = price - discountAmount;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const MText(
          value: 'تفاصيل المبلغ',
          fontSize: AppDimens.s18,
          fontWeight: FontWeight.bold,
          textDirection: TextDirection.rtl,
          color:AppColors.thr_violet_txt ,
        ),
        SizedBox(height: AppDimens.h8,),
        MoteelzContainer(
          child: Column(
            children: [
              const SizedBox(height: 8),
              _buildPriceRow(
                  '${dayOption.days} ليالي',
                  '${"${price}"} ر.س'
              ),
              _buildPriceRow(
                  'ضريبة القيمة المضافة (${wallet.taxPercent}%)',
                  '${calculateTaxPrice(price,taxPercent:wallet.taxPercent)} ر.س'
              ),
              if (discount > 0) ...[
                const SizedBox(height: 8),
                _buildPriceRow(
                  'خصم الكوبون (${(discount * 100).toInt()}%)',
                  "-$discountAmount",
                  isDiscount: true,
                ),
              ],
              const DottedDivider(
                dashWidth: 3,
              ),
              _buildPriceRow(
                  'المبلغ الإجمالي',
                  discount > 0?
                  '${(price+calculateTaxPrice(price,taxPercent:wallet.taxPercent))-discountAmount} ر.س'
                      :
                  '${price+calculateTaxPrice(price,taxPercent:wallet.taxPercent)} ر.س',
                  isTotal: true
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPriceRow(
      String label,
      String price,
      {
        bool isTotal = false,
        bool isDiscount = false,
      }
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MText(
            value: label,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            color: isTotal ? AppColors.thr_violet_txt :AppColors.primry_gray_txt,
            fontSize: AppDimens.s16,
          ),
          if (isDiscount)
            MText(
              value: isDiscount ? '- ${price} ر.س' : '${price} ر.س',
              color: Colors.green,
            ),
          MText(
            value: price,
            color: isTotal ? AppColors.purple_txt : Colors.grey,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            fontSize: AppDimens.s20,
          ),
        ],
      ),
    );
  }
}