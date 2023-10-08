part of 'predict_cubit.dart';

@immutable
sealed class PredictState {}

final class PredictInitial extends PredictState {}

final class PredictLoading extends PredictState {}

final class PredictFetched extends PredictState {
  final Map<String, dynamic>? predictedData;

  PredictFetched(this.predictedData);
}

final class PredictError extends PredictState {
  final String errorMessage;
  PredictError({this.errorMessage = "Unknown error"});
}
