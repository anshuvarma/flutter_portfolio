import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

class RowCardWidget extends StatelessWidget {
  final List<String>
      cardTitles; // Make cardTitles optional with a default value
  final List<List<Widget>> cardDesc;
  final double? mainAxisExtent; // Max height of each card
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double? childAspectRatio; // Aspect ratio of each card
  final Axis scrollDirection; // Scroll direction of the grid

  const RowCardWidget({
    this.cardTitles = const [], // Provide a default empty list
    required this.cardDesc,
    this.mainAxisExtent,
    this.mainAxisSpacing = 16.0,
    this.crossAxisSpacing = 20.0,
    this.childAspectRatio,
    this.scrollDirection = Axis.vertical,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final titles = cardTitles.isNotEmpty
        ? cardTitles
        : List.filled(
            cardDesc.length, ""); // Empty strings if cardTitles is empty

    return LayoutBuilder(builder: (context, constraints) {
      int crossAxisCount = 4;
      double horizontalPadding = 100.0;

      if (constraints.maxWidth < 600) {
        crossAxisCount = 1; // Single column for mobile layout
        horizontalPadding = 20.0; // Reduced padding for mobile layout
      } else if (constraints.maxWidth < 900) {
        crossAxisCount = 2; // Two columns for tablet layout
        horizontalPadding = 50.0; // Adjusted padding for tablet layout
      }

      return Padding(
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
        child: SizedBox(
          height: mainAxisExtent ?? 400, // Use dynamic height or default to 400
          child: GridView.builder(
            scrollDirection: scrollDirection,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisExtent: mainAxisExtent ?? 300,
              mainAxisSpacing: mainAxisSpacing,
              childAspectRatio: childAspectRatio ?? 1.0,
              crossAxisSpacing: crossAxisSpacing,
            ),
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Card(
                shadowColor: AppColors.cardShadowColor,
                elevation: 5.0,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: AppColors.fontColor,
                    width: 0.5,
                  ),
                ),
                child: Container(
                  color: AppColors.cardBackgroundColor,
                  // padding: const EdgeInsets.all(15.0),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (titles[index].isNotEmpty)
                          Text(titles[index], style: AppColors.cardTitle),
                        const SizedBox(height: 10.0),
                        Wrap(
                          children: cardDesc[index],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    });
  }

  launchUrl(Uri parse) {}
}
