import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/api_service.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ApiService apiService;

  ProductBloc(this.apiService) : super(ProductLoading()) {
    on<FetchProducts>((event, emit) async {
      try {
        final products = await apiService.fetchProducts();
        emit(ProductLoaded(products));
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    });
  }
}
