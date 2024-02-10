import 'package:dineinapp/cubit/page_cubit.dart';
import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavItem extends StatelessWidget {
  final int index;
  final String selectedicon;
  final String unselectedicon;

  const CustomBottomNavItem({
    Key? key,
    required this.index,
    required this.unselectedicon,
    required this.selectedicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageCubit pageCubit = context.read<PageCubit>();
    final bool isSelected = pageCubit.state == index;

    return GestureDetector(
      onTap: () {
        pageCubit.setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            isSelected ? selectedicon : unselectedicon,
            width: 28,
            height: 28,
          ),
        ],
      ),
    );
  }
}
