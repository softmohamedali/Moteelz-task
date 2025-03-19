import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/core/ui/app_font.dart';
import 'package:moteelz/presentation/pages/wallet/widgets/text_border.dart';
import 'package:moteelz/presentation/widgets/m_text.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({super.key});

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  RangeValues _currentRangeValues = const RangeValues(250, 7500);
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding:  EdgeInsets.only(
              top: AppDimens.p16,
          ),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(
                  right: AppDimens.p18,
                  left: AppDimens.p18,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MText(
                          value: 'التصفية',
                          fontSize: AppDimens.s18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.thr_violet_txt,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: MText(
                            value: 'محو الكل',
                            color: AppColors.purple_txt,
                            fontSize: AppDimens.s16,
                            fontFamily: AppFont.fontBold,
                            underline: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const MText(
                      value: 'السعر',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: Get.width*0.3,
                          child: TextBorder(
                            value: 'رس ${_currentRangeValues.end.toInt()}',
                          ),
                        ),
                        SizedBox(
                          width: Get.width*0.3,
                          child: TextBorder(
                            value: 'رس ${_currentRangeValues.start.toInt()}',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.deepPurple[400],
                        inactiveTrackColor: Colors.deepPurple[100],
                        thumbColor: Colors.deepPurple[400],
                        overlayColor: Colors.deepPurple.withOpacity(0.1),
                        rangeThumbShape: const RoundRangeSliderThumbShape(
                          enabledThumbRadius: 8.0,
                        ),
                      ),
                      child: RangeSlider(
                        values: _currentRangeValues,
                        min: 0,
                        max: 10000,
                        divisions: 100,
                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: AppDimens.h8),
                    const MText(
                      value: 'الدولة',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.gray_border),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: MText(
                              value: "اختيار",
                              color: AppColors.primry_gray_txt,
                              textAlign: TextAlign.right,
                            ),
                          ),
                          value: selectedCountry,
                          icon: const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Icon(Icons.keyboard_arrow_down,color: AppColors.primary,),
                          ),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCountry = newValue;
                            });
                          },
                          items: <String>['السعودية', 'الإمارات', 'قطر', 'الكويت']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(value),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height*0.2,
              ),
              SizedBox(
                width: double.infinity,
                height: AppDimens.btnH60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[400],
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  child:  MText(
                    value: 'بحث',
                      fontSize: AppDimens.s16,
                      color: Colors.white,

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