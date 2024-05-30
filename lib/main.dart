import 'package:flutter/material.dart';

void main() {
  runApp(
      /* ◆ MaterialApp
      マテリアルデザインに準拠したテーマの提供や
      画面遷移の機能を内包したWidget
       */
      const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /* ◆ Scaffold
    マテリアルデザインの基本的なレイアウトを提供するWidget
    */
    return Scaffold(
      body: Center(
        child: Column(
          // 子Widgetを中央に寄せるためのパラメータ
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            /* ◆ Text
            ユーザーがテキスト入力するためのWidget
            */
            const TextField(),
          ],
        ),
      ),
    );
  }
}
