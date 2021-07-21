import 'package:bloc/bloc.dart';
import 'package:simas/widget/home/home_event.dart';
import 'package:simas/widget/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeStateInitial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is HomeEventIncrement) {
      yield HomeStateUpdateCount(state.count + 1);
    } else if (event is HomeEventDecrement) {
      yield HomeStateUpdateCount(state.count - 1);
    }
  }
}
