#language :ja
フィーチャ: 管理用のページから店舗データを登録できること

  背景:
    前提 店舗管理ページを開いている

  シナリオ: 店舗データを新規に登録できる
    前提: "New Shop"リンクをクリックする
    もし 以下の内容で店舗を登録する:
      | 店舗名 | 説明 | 紹介文 |
      | テスト用の店舗 | てすとです | テストデス |
    ならば "テスト用の店舗"の店舗詳細ページが作成されていること
    かつ 説明が"てすとです"となっていること
    かつ 紹介文が"テストデス"となっていること