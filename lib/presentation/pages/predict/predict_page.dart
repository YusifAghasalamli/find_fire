import 'package:find_fire/presentation/components/custom_button.dart';
import 'package:find_fire/presentation/pages/predict/cubit/predict_cubit.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PredictPage extends StatelessWidget {
  const PredictPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = {
      "UTC": 1654736509,
      "Temperature_C": 9.381,
      "Humidity_percent": 56.86,
      "TVOC_ppb": 11,
      "eCO2_ppm": 400,
      "Raw H2": 13347,
      "Raw Ethanol": 20160,
      "Pressure_hPa": 939.575,
      "PM1.0": 1.78,
      "PM2.5": 1.85,
      "NC0.5": 12.25,
      "NC1.0": 1.911,
      "NC2.5": 0.043,
      "CNT": 3178
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("predict page"),
      ),
      body: BlocBuilder<PredictCubit, PredictState>(
        builder: (context, state) {
          if (state is PredictInitial) {
            return Center(
              child: CustomButton(
                  onPressed: () {
                    context.read<PredictCubit>().postData(data);
                  },
                  radius: 16.r,
                  backgroundColor: ColorConstants.primaryRed,
                  height: 50.h,
                  width: 300.w,
                  foregroundColor: ColorConstants.primaryWhite,
                  frontText: "Predict"),
            );
          } else if (state is PredictLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PredictFetched) {
            return Text("${state.predictedData}");
          } else if (state is PredictError) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
