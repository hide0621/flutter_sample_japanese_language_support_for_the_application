# flutter_sample_japanese_language_support_for_the_application

書籍「Flutter実践開発」の第４章のうち、「アプリの日本語化対応」の部分の内容です

[Flutter実践開発 -iPhone／Android両対応アプリ開発のテクニック-](https://gihyo.jp/book/2024/978-4-297-13993-3)

## arbファイルとyamlファイルを用いたコード生成の際の注意点

注意点１ 

- `app_ja.arb`ファイルの場合、アンダーバーと拡張子の間が`ja`なので日本語のarbファイルとして扱われる

注意点２

- `app_ja.arb`ファイルとは別に`app_en.arb`ファイルを作り、yamlファイルの該当部分を`app_en.arb`ファイルを参照するように修正してコード生成（例：`flutter gen-l10n`）したとして、
  再度`app_ja.arb`ファイルを参照するようにしたい場合は、`app_en.arb`ファイルを削除した後でコード生成をしないと反映されない！

注意点３

- `@@locale`キーを付与したarbファイルの命名は先述のarbファイルのそれとは異なり自由な命名が出来るが、このキーが参照する言語（例：`ja`）と同じ言語を含んだarbファイル（例：`app_ja.arb`ファイル）は両立できない！

注意点４

- 上記キーによりコード生成する場合も注意点２と同じ条件が課せられる点に注意！場合に応じてarbファイルを削除したり、復活させたりする必要がある...

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
