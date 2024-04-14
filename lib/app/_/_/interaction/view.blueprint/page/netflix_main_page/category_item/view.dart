import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class CategoryItemView extends StatefulWidget {
  CategoryItemView({
    super.key,
    required this.posterPaths,
    required this.height,
    required this.width,
    required this.listLabel,
  });

  final List<String> posterPaths;
  final double height;
  final double width;
  final String listLabel;

  @override
  State<CategoryItemView> createState() => StateChild();
}

class CategoryItemViewState extends State<CategoryItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.listLabel,
        )
            .textColor(Colors.white.withOpacity(0.8))
            .fontWeight(FontWeight.w600)
            .fontSize(22)
            .alignment(Alignment.centerLeft)
            .padding(bottom: 4),
        Container(
          height: widget.height,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.posterPaths.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: widget.width,
                  height: widget.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        image: AssetImage(widget.posterPaths[index]),
                        fit: BoxFit.fill),
                  ),
                ).gestures(onTap: () {});
              }),
        )
      ],
    ).padding(bottom: 20);
  }
}

// main() async {
//   return buildApp(appHome: CategoryItemView().center());
// }
