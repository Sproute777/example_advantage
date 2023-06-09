part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  DashboardState({
    DateTime? startDate,
    DateTime? selectedDate,
    this.weight,
    this.weightChange = 0,
    this.hasWorkoutSession = false,
  })  : startDate = startDate ?? DateTime.now().stripDetails(),
        selectedDate = selectedDate ?? DateTime.now().stripDetails();

  final double? weight;
  final double weightChange;
  final bool hasWorkoutSession;
  final DateTime startDate;
  final DateTime selectedDate;

  @override
  List<Object?> get props {
    return [
      weight,
      weightChange,
      hasWorkoutSession,
      startDate,
      selectedDate,
    ];
  }

  DashboardState copyWith({
    int? steps,
    double? weight,
    double? weightChange,
    bool? hasWorkoutSession,
    DateTime? startDate,
    DateTime? selectedDate,
  }) {
    return DashboardState(
      weight: weight ?? this.weight,
      weightChange: weightChange ?? this.weightChange,
      hasWorkoutSession: hasWorkoutSession ?? this.hasWorkoutSession,
      startDate: startDate ?? this.startDate,
      selectedDate: selectedDate ?? this.selectedDate,
    );
  }
}

extension on DateTime {
  DateTime stripDetails() {
    return DateTime(year, month, day, hour, minute);
  }
}
