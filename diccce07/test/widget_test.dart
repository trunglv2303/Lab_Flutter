import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:diccce07/main.dart'; // Đảm bảo đây là tên đúng của project bạn.

void main() {
  testWidgets('Dice changes when tapped', (WidgetTester tester) async {
    // Build the DicePage widget
    await tester.pumpWidget(MaterialApp(home: DicePage()));

    // Find the first dice image
    final firstDice = find.byType(Image).first;

    // Get the initial image widget
    final Image initialImage = tester.widget(firstDice);
    final String initialImagePath = (initialImage.image as AssetImage).assetName;

    // Tap the first dice button
    await tester.tap(firstDice);
    await tester.pump();

    // Get the updated image widget
    final Image updatedImage = tester.widget(firstDice);
    final String updatedImagePath = (updatedImage.image as AssetImage).assetName;

    // Check that the dice image has changed
    expect(updatedImagePath, isNot(equals(initialImagePath)));
  });
}
