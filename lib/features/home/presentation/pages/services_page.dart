import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/widgets/home_draggable_sheet.dart';
import 'package:gelirx/features/home/presentation/widgets/home_map_widget.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

@RoutePage()
class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context
              .read<HomeBloc>()
              .state
              .categories[context.read<HomeBloc>().state.catIndex]
              .name,
        ),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) =>
            previous.isLoading != current.isLoading,
        listener: (context, state) {
          if (state.isLoading) {
            LoadingScreen.instance().showLoadingScreen(
              context: context,
              text: 'Loading . . .',
            );
          } else {
            LoadingScreen.instance().hide();
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              state.userPosition.fold(
                () => const Center(
                  child: CircularProgressIndicator(),
                ),
                (userPosition) => HomeMap(
                  userPosition: userPosition,
                  range: state.range,
                ),
              ),
              HomeDraggableSheet(
                categories: state.categories,
                subCategories: state.subCategories,
                catIndex: state.catIndex,
                subCatIndex: state.subCatIndex,
              ),
            ],
          );
        },
      ),
    );
  }
}
