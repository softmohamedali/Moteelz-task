import 'package:context_plus/context_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:moteelz/core/ui/app_assets.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/presentation/pages/details_payment_steps/details_payment_steps.dart';
import 'package:moteelz/presentation/pages/wallet/wallet_viewmodel.dart';
import 'package:moteelz/presentation/pages/wallet/widgets/wallet_filter_dialog.dart';
import 'package:moteelz/presentation/pages/wallet/widgets/wallet_item.dart';
import 'package:moteelz/presentation/widgets/search_text_field.dart';
import 'package:signals/signals_flutter.dart';

import '../../../core/ui/app_dimen.dart';
import '../../widgets/button_text_icon.dart';
import '../../widgets/m_text.dart';

final walletListViewModel = WalletListViewModel();
final walletListViewModelRef = Ref<WalletListViewModel>();

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = walletListViewModelRef.bind(context, () => walletListViewModel);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        title: SearchTextField(
          controller: viewModel.searchQueryController,
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
          svgString: AppAssets.filter,
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
      body: Watch((context){
        final wallets = viewModel.walletsSignal.value;
        final isLoading = viewModel.isLoadingSignal.value;
        final error = viewModel.errorSignal.value;
        final isFilterApplied = viewModel.isFilterAppliedSignal.value;
        var searchResult=viewModel.walletsSignal.value
            .where((item) => item.name.toLowerCase().contains(viewModel.searchQuery.value))
            .toList();

        if (isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (error != null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(error),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => viewModel.fetchWallets(),
                  child: const MText(value: 'حاول مرة أخرى'),
                ),
              ],
            ),
          );
        }

        if (wallets.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MText(
                    value: 'لا توجد محافظ متاحة',
                  color: AppColors.sec_pinc_txt,
                ),
                if (isFilterApplied)
                  ElevatedButton(
                    onPressed: viewModel.resetFilters,
                    child: const Text('إعادة تعيين التصفية'),
                  ),
              ],
            ),
          );
        }

        if(viewModel.searchQuery.value.trim().isNotEmpty){
          //easy and tricky way to search
          if (searchResult.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MText(
                    value: 'لا توجد محافظ متاحة',
                    color: AppColors.sec_pinc_txt,
                  ),
                  if (isFilterApplied)
                    ElevatedButton(
                      onPressed: viewModel.resetFilters,
                      child: const Text('إعادة تعيين التصفية'),
                    ),
                ],
              ),
            );
          }

          return Padding(
            padding:  const EdgeInsets.all(16.0),
            child: ListView.separated(
              physics: const ClampingScrollPhysics(),
              itemCount: searchResult.length,
              separatorBuilder: (context, index) =>  Container(
                height:AppDimens.h16,
              ),
              itemBuilder: (context, index) {
                final item = searchResult[index];
                return WalletItem(
                  cardImgUrl: item.walletImage,
                  validThru: item.expiryDate.toString(),
                  daysNumber: item.availableDays.toString(),
                  cardType: item.walletCategory.name,
                  price: item.price,
                  features: item.featuresFavorites.map((item)=> item.name.toString()).toList(),
                  onTap: (){
                    Get.to(()=> DetailsPaymentStepsScreen(walletId: item.id,));
                  },
                );
              },
            ),
          );
        }else{
          return Padding(
            padding:  const EdgeInsets.all(16.0),
            child: ListView.separated(
              physics: const ClampingScrollPhysics(),
              itemCount: viewModel.walletsSignal.value.length,
              separatorBuilder: (context, index) =>  Container(
                height:AppDimens.h16,
              ),
              itemBuilder: (context, index) {
                final item = wallets[index];
                return WalletItem(
                  cardImgUrl: item.walletImage,
                  validThru: item.expiryDate.toString(),
                  daysNumber: item.availableDays.toString(),
                  cardType: item.walletCategory.name,
                  price: item.price,
                  features: item.featuresFavorites.map((item)=> item.name.toString()).toList(),
                  onTap: (){
                    Get.to(()=> DetailsPaymentStepsScreen(walletId: item.id,));
                  },
                );
              },
            ),
          );
        }


        
      }),
    );
  }

}


