import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';

class ColumnCardWidget extends StatelessWidget {
  final List<String> cardTitles;
  final List<List<Widget>> cardDesc;
  final List<List<Widget>> cardTitle2;
  final double? mainAxisExtent;

  const ColumnCardWidget({
    this.cardTitles = const [],
    this.cardTitle2 = const [],
    this.mainAxisExtent,
    required this.cardDesc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the number of columns based on the screen width
        int crossAxisCount = 3; // Default for web layout
        double horizontalPadding = 100.0; // Default padding for web layout

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
            height: mainAxisExtent ?? 500.0,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 16.0,
                crossAxisCount: crossAxisCount,
                mainAxisExtent: mainAxisExtent ?? 300.0, // Adjusted height
                childAspectRatio: 1.0,
                crossAxisSpacing: 20.0, // Width space between the cards
              ),
              itemCount: cardDesc.length,
              itemBuilder: (context, index) {
                return Card(
                  shadowColor: AppColors.cardShadowColor,
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white,
                      width: 0.5,
                    ),
                  ),
                  child: Container(
                    color: AppColors.cardBackgroundColor,
                    // color: Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cardTitles[index],
                            style: AppColors.cardTitle, // Bold title
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          if (cardTitle2.isNotEmpty &&
                              index < cardTitle2.length)
                            ...cardTitle2[index],
                          const SizedBox(
                            height: 10.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: cardDesc[index]
                                .map((desc) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 3.0), // Reduced padding
                                      child: desc,
                                    ))
                                .toList(),
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
      },
    );
  }
}
