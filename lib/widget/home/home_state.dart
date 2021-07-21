abstract class HomeState {
  int count = 0;
  HomeState(this.count);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeState &&
          runtimeType == other.runtimeType &&
          count == other.count;

  @override
  int get hashCode => count.hashCode;
}

class HomeStateInitial extends HomeState {
  HomeStateInitial() : super(0);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is HomeStateInitial &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode => super.hashCode;
}

class HomeStateUpdateCount extends HomeState {
  HomeStateUpdateCount(int updatedCount) : super(updatedCount);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is HomeStateUpdateCount &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode => super.hashCode;
}
