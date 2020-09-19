import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mamoney/widgets/buttonmamoney.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  testWidgets('Testing app component for button', (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();
    ScreenUtil.init(designSize: Size(750, 1334), allowFontScaling: false);

    //Build da tela
    await tester.pumpWidget(MaterialApp(
        home: ButtonMaMoney(
            key: Key('MaMoneyButtonKey'), buttonText: 'ButtonTest')));

    //Busca por widgets
    expect(find.byKey(Key('MaMoneyButtonKey')), findsOneWidget);
  });
}
