import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mnjz/core/utils/helpers/extensions.dart';
import 'package:mnjz/features/home/data/models/product_model.dart';

import '../../../../core/utils/components/custom_loading_indicator.dart';
import '../../../../core/utils/components/custom_text.dart';
import '../../../../core/utils/components/custom_text_field.dart';
import '../../../../core/utils/components/error_widget_placeholder.dart';
import '../controllers/home_cubit.dart';
import '../widgets/product_list_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  int calculateCrossAxisCount(BuildContext context) {
    // Calculate the cross axis count based on the screen size
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 150).floor(); // Adjust as needed
    return crossAxisCount > 0 ? crossAxisCount : 1;
  }

  @override
  Widget build(BuildContext context) {
    // Listen to scroll events
    final homeCubit = BlocProvider.of<HomeCubit>(context);

    return Scaffold(
      backgroundColor: const Color(0xFF15141F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
          child: Column(
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomText(
                      text: 'Find Products, Categories,\nand more..',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              20.ph,
              CustomTextField(
                controller: searchController,
                borderRadius: 20,
                borderColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
                hint: 'Search products..',
                onChange: (query) {
                  homeCubit.searchProducts(query!);
                },
                onEditComplete: () {
                  homeCubit.searchProducts(searchController.text);
                },
              ),
              16.ph,
              Expanded(child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state is HomeProductsLoadingState) {
                    return const CustomLoadingIndicator();
                  }
                  if (state is HomeProductsErrorState) {
                    print('error is :${state.errorType.name}');
                    return ErrorWidgetPlaceHolder(
                      errorState: state.errorType,
                      errorMsg: state.msg,
                      btnFunction: () {
                        homeCubit.getHomeProducts();
                      },
                    );
                  }
                  List<ProductModel> products = [];
                  if (state is HomeProductsSuccessState) {
                    products = state.products;
                  } else if (state is HomeProductsErrorState) {
                    products = [];
                  }

                  return RefreshIndicator(
                    color: Colors.white,
                    onRefresh: () async {
                      homeCubit.getHomeProducts();
                    },
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: calculateCrossAxisCount(context),
                        childAspectRatio: 0.55,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return CustomGridItem(
                          product: products[index],
                        );
                      },
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
