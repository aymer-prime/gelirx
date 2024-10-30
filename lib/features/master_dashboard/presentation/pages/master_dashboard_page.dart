import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/booking/presentation/bloc/booking_bloc.dart';
import 'package:gelirx/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../app/injector/injection.dart';
import '../../../auth/presentation/bloc/auth_status/auth_status_bloc.dart';
import '../../../booking/domain/entities/booking_entity.dart';

@RoutePage()
class MasterDashboardPage extends StatelessWidget {
  const MasterDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              var currentUser = context.read<AuthStatusBloc>().state.maybeMap(
                    orElse: () => null,
                    authenticated: (value) => value.user,
                  );
              return getIt<BookingBloc>()
                ..add(
                  BookingEvent.getBookings(
                      currentUser: currentUser, shouldFilter: true, status: 1),
                );
            },
          ),
          BlocProvider(
            create: (context) {
              var currentUser = context.read<AuthStatusBloc>().state.maybeMap(
                    orElse: () => null,
                    authenticated: (value) => value.user,
                  );
              return getIt<ProfileBloc>()
                ..add(
                  ProfileEvent.getUserInfo(currentUser),
                );
            },
          ),
        ],
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, profileState) {
            return BlocBuilder<BookingBloc, BookingState>(
              builder: (context, bookingState) {
                return bookingState.when(
                    initial: () =>
                        Center(child: Text("Start fetching bookings...")),
                    loading: () => Center(child: CircularProgressIndicator()),
                    loadFailed: (error) =>
                        Center(child: Text("Error: ${error}")),
                    loadSuccess: (bookingsList) {
                      return Scaffold(
                        backgroundColor: ColorManager.white,
                        appBar: AppBar(
                          title: Text(profileState.maybeMap(
                              orElse: () => "loading",
                              loadSuccess: (userInfo) =>
                                  "${userInfo.userInfo.name} ${userInfo.userInfo.surname}")),
                          centerTitle: false,
                          actions: [
                            Container(
                              height: 30,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p8),
                              //margin: const EdgeInsets.symmetric(horizontal: AppMargin.m4),
                              decoration: BoxDecoration(
                                color: ColorManager.confirmedColor,
                                borderRadius: BorderRadius.circular(
                                  AppSize.s12,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Available',
                                  style: context.textTheme.labelSmall!.copyWith(
                                    color: ColorManager.confirmedTextColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: AppSize.s8),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Bronze',
                                  style: context.textTheme.labelLarge!.copyWith(
                                    color: ColorManager.bronzeTire,
                                    fontSize: FontSizeManager.s10,
                                  ),
                                ),
                                Text(
                                  profileState.maybeMap(
                                      orElse: () => "loading",
                                      loadSuccess: (userInfo) =>
                                      "${userInfo.userInfo.coins}"),
                                  style: context.textTheme.labelSmall!.copyWith(
                                    fontSize: FontSizeManager.s8,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: AppSize.s4),
                            SvgPicture.asset(
                              ImageAssets.tierIcon,
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  ColorManager.bronzeTire, BlendMode.srcIn),
                            ),
                            const SizedBox(width: AppSize.s4),
                          ],
                        ),
                        body: MasterDashboardBody(
                          bookingsList: bookingsList,
                        ),
                      );
                    });
              },
            );
          },
        ),
      ),
    );
  }
}

class MasterDashboardBody extends StatelessWidget {
  final List<Booking> bookingsList;
  const MasterDashboardBody({
    super.key,
    required this.bookingsList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(AppPadding.p24),
        itemCount: bookingsList.length,
        itemBuilder: (context, index) => Column(
              children: [
                MasterBookingWidget(booking: bookingsList[index]),
                SizedBox(height: AppSize.s16)
              ],
            ));
  }
}

class MasterBookingWidget extends StatelessWidget {
  final Booking booking;
  const MasterBookingWidget({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppSize.s16),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Color.fromARGB((255 * 0.2).floor(), 0, 0, 0),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  booking.master.services[0].name,
                  style: context.textTheme.headlineSmall,
                ),
                Text(
                  DateFormat('dd-MM-yyyy hh:mm').format(booking.processDate),
                  style: context.textTheme.labelSmall,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16,
              ),
              child: Divider(
                color: ColorManager.textfieldBorderColor,
                height: AppSize.s24,
              ),
            ),
            Text(
              'Problem Explanation:',
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: AppSize.s8),
            Container(
              padding: const EdgeInsets.all(AppSize.s8),
              decoration: BoxDecoration(
                color: ColorManager.textfieldFillColor,
                border: Border.all(
                  color: ColorManager.textfieldBorderColor,
                ),
                borderRadius: BorderRadius.circular(
                  AppSize.s12,
                ),
              ),
              child: Text(
                booking.description,
              ),
            ),
            const SizedBox(height: AppSize.s16),
            Text(
              'Location:',
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: AppSize.s8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSize.s8),
              decoration: BoxDecoration(
                color: ColorManager.textfieldFillColor,
                border: Border.all(
                  color: ColorManager.textfieldBorderColor,
                ),
                borderRadius: BorderRadius.circular(
                  AppSize.s12,
                ),
              ),
              child: Text(booking.address),
            ),
            const SizedBox(height: AppSize.s16),
            Text(
              'Problem Photos:',
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: AppSize.s8),
            booking.bookingImages.isNotEmpty
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      booking.bookingImages.length,
                      (index) => Flexible(
                        child: AspectRatio(
                          aspectRatio: 0.858,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              AppSize.s10,
                            ),
                            child: Image.network(
                              booking.bookingImages[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ).separateWith(
                      const SizedBox(width: AppSize.s10),
                    ),
                  )
                : Text(
                    'No photos available',
                    style: context.textTheme.labelSmall,
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16,
              ),
              child: Divider(
                color: ColorManager.textfieldBorderColor,
                height: AppSize.s24,
              ),
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<BookingBloc>().add(
                            BookingEvent.updateOrderStatus(booking.id,2));
                        context.router.push(const MasterActiveServiceRoute());
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          AppSize.s8,
                        )),
                        backgroundColor: ColorManager.joyColor,
                      ),
                      child: const Text('Accept'),
                    ),
                  ),
                ),
                const SizedBox(width: AppSize.s8),
                Flexible(
                  fit: FlexFit.tight,
                  child: SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {
                        context.read<BookingBloc>().add(
                            BookingEvent.updateOrderStatus(booking.id,0));
                      },
                      child: const Text('Decline'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
