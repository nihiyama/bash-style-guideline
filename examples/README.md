# スクリプト集

## ディレクトリ構成

- [4. コードの構造と設計](../docs/04_%E3%82%B3%E3%83%BC%E3%83%89%E3%81%AE%E6%A7%8B%E9%80%A0%E3%81%A8%E8%A8%AD%E8%A8%88.md)に従い、以下のディレクトリ構成とします。

```
.
├── bin
├── conf
├── log
└── tests
    └── test_utils.bats
```

## スクリプト

- utils
  - 説明: 他の関数から共通で利用できるloggerなどのユーティリティ関数を実装しています。
  - ソース: [utils.sh](./src/utils.sh)
  - コンフィグ: なし
  - テスト: [xxx.bats](./tests/test_utils.bats)
