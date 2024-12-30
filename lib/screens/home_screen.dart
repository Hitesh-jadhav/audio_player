import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/product_bloc.dart';
import '../blocs/product_event.dart';
import '../blocs/product_state.dart';
import '../widgets/product_card.dart';
import '../services/api_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: Column(
        children: [
          // Navigation buttons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Form Screen
                    Navigator.pushNamed(context, '/form');
                  },
                  child: Text("Go to Form Screen"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Audio Player Screen
                    Navigator.pushNamed(context, '/audio-player');
                  },
                  child: Text("Go to Audio Player"),
                ),
              ],
            ),
          ),
          
          // Bloc Provider and Product List
          Expanded(
            child: BlocProvider(
              create: (context) => ProductBloc(ApiService())..add(FetchProducts()),
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  if (state is ProductLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is ProductLoaded) {
                    return ListView.builder(
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        return ProductCard(product: state.products[index]);
                      },
                    );
                  } else if (state is ProductError) {
                    return Center(child: Text('Error: ${state.message}'));
                  }
                  return Container();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
