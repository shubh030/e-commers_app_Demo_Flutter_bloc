import 'package:coditron_app/src/features/home/screens/cubits/home_cubit.dart';
import 'package:coditron_app/src/features/home/screens/cubits/home_state.dart';
import 'package:coditron_app/src/theme/app_theme.dart';
import 'package:coditron_app/src/utils/app_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClubListPage extends StatefulWidget {
  const ClubListPage({super.key});

  @override
  State<ClubListPage> createState() => _ClubListPageState();
}

class _ClubListPageState extends State<ClubListPage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getClubList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (_, oldState) {
        return oldState is HomeClubFailedState ||
            oldState is HomeClubLoadedState;
      },
      builder: (context, state) {
        if (state is HomeLoadingState) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  4,
                  (index) => const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AppShimmer(
                      height: 70,
                      width: 150,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        if (state is HomeClubLoadedState) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  state.clubListData.length,
                  (index) => Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.whiteColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppColor.kShadowColor,
                          spreadRadius: 2.0,
                          blurRadius: 1.0,
                          offset: Offset(0.0, 2.0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Club Id : ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(),
                            children: [
                              TextSpan(
                                text: state.clubListData[index]!.clubId,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              )
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Club Name : ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(),
                            children: [
                              TextSpan(
                                text: state.clubListData[index]!.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
