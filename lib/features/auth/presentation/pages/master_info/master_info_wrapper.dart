import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/features/auth/presentation/bloc/master_verification/master_verification_bloc.dart';

@RoutePage()
class MasterInfoWrapperPage extends StatelessWidget {
  const MasterInfoWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MasterVerificationBloc>(),
      child: const AutoRouter(), // this as the child Important!
    );
  }
}
