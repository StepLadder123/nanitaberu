# アプリケーション名
何たベル？

# アプリケーションの概要
家族の夜ごはん管理アプリ

# URL
https://nanitaberu-stepladder123.herokuapp.com/

# テスト用アカウント
- ルーム1（鈴木家／検索用ルームコード：suzu1234）
  - ユーザー1（鈴木家の母）
    - ID
    test1@test.co.jp
    - Password
    a9b8c7
    - STS
    ルーム1のオーナー
  - ユーザー2（鈴木家の父）
    - ID
    test2@test.co.jp
    - Password
    a9b8c7
    - STS
    ルーム1のメンバー
  - ユーザー3（鈴木家の長男）
    - ID
    test3@test.co.jp
    - Password
    a9b8c7
    - STS
    ルーム無所属、ルーム1の入室承認中
  - ユーザー4（鈴木家の長女）
    - ID
    test4@test.co.jp
    - Password
    a9b8c7
    - STS
    ルーム無所属
- ルーム2（佐藤家／検索用ルームコード：sato1234）
  - ユーザー5（佐藤家の妻）
    - ID
    test5@test.co.jp
    - Password
    a9b8c7
    - STS
    ルーム2のオーナー


# 利用方法
- 毎日の夜ごはんの献立を登録
- 献立の前回日付・登場回数確認


# 目指した課題解決
- 献立検討時間の効率化
- 献立の履歴確認


# 洗い出した要件
- 会員登録機能
- ルーム参加機能
- ルーム作成機能


# 実装した機能についての画像やGIFおよびその説明

## トップページ

  - 未ログイン時

    ログイン画面と新規登録画面に遷移可能

    [![Image from Gyazo](https://i.gyazo.com/fd688b37fe842173128231eba3ef276e.jpg)](https://gyazo.com/fd688b37fe842173128231eba3ef276e)

  - ログイン時（ルーム所属なし）

    専用ルームに所属する必要があるため、ルームコードの入力が必要となる。新規でルーム作成をする場合はリンクをクリック

    [![Image from Gyazo](https://i.gyazo.com/b20b5cf8870e1d6cc23b02663a77c87b.png)](https://gyazo.com/b20b5cf8870e1d6cc23b02663a77c87b)

    - ルーム検索時

      検索されたルームの情報の確認画面に遷移。問題なければ入室申請を行う。

      [![Image from Gyazo](https://i.gyazo.com/de9fb8d18887f1d942599dc5b21cfabc.png)](https://gyazo.com/de9fb8d18887f1d942599dc5b21cfabc)

      ルーム入室申請すると、ルーム申請中である旨が表示される。ルーム申請中に再ログインした場合も同じ画面に遷移する。

      [![Image from Gyazo](https://i.gyazo.com/1a3f39a7217d44235e131ce8059600c8.png)](https://gyazo.com/1a3f39a7217d44235e131ce8059600c8)

      検索されたルームコードが存在しなければ、存在しない旨が表示される。

      [![Image from Gyazo](https://i.gyazo.com/0be1ada4e4f9880df4c3a6aeda16f40d.png)](https://gyazo.com/0be1ada4e4f9880df4c3a6aeda16f40d)

    - ルーム作成時

      ルーム名、ルームコード、ルーム内のルールを入力し、ルーム登録を行う。
      
      [![Image from Gyazo](https://i.gyazo.com/0a46b3cad963a632b1e0581d050f1b99.png)](https://gyazo.com/0a46b3cad963a632b1e0581d050f1b99)
    
  - ログイン時（ルーム所属あり）

    専用ルームのトップページが表示。今日の献立、献立予定登録、入室承認（ルームオーナーのみ）をたぶで切り替え可能。下部で本日から3日後までの予定を確認可能。

    [![Image from Gyazo](https://i.gyazo.com/267f210086caf381a83def4fe0d7e666.gif)](https://gyazo.com/267f210086caf381a83def4fe0d7e666)

    - 今日の献立

      今日の献立を表示

      [![Image from Gyazo](https://i.gyazo.com/a2aa1a847656fd7a315f1ef01b770aa1.png)](https://gyazo.com/a2aa1a847656fd7a315f1ef01b770aa1)

    - 献立予定登録

      献立日を入力し、メニューを選択。メニューは事前登録が必要で、「メニューを新規登録する」リンクをクリック。他家族の献立予定やメニューは参照・選択できません。

      [![Image from Gyazo](https://i.gyazo.com/b1d702c45845be071b52a44725be8d25.jpg)](https://gyazo.com/b1d702c45845be071b52a44725be8d25)

      - メニュー登録

        献立登録、日付、回数管理のためにメニューの登録を行う。メニュー画像、メニュー名、メモを入力

        [![Image from Gyazo](https://i.gyazo.com/c026014a6642103aba809fd491d410db.png)](https://gyazo.com/c026014a6642103aba809fd491d410db)

    - 入室承認

      ルーム入室申請中のユーザーがいれば承認する・しないの登録が可能

      [![Image from Gyazo](https://i.gyazo.com/cacfc38236891ba6dd820562a3724b27.png)](https://gyazo.com/cacfc38236891ba6dd820562a3724b27)

      - 入室承認待ちユーザーがいない場合

        [![Image from Gyazo](https://i.gyazo.com/5eb9839e1246fed78a1bcdf901853b5c.png)](https://gyazo.com/5eb9839e1246fed78a1bcdf901853b5c)

      - ルームオーナー以外のトップページ

        入室承認タブは非表示

        [![Image from Gyazo](https://i.gyazo.com/0162d9142176b2c5c82445145ddb59e7.png)](https://gyazo.com/0162d9142176b2c5c82445145ddb59e7)

  - メニュー表示

    作成されたメニューの詳細を表示。料理画像、料理名、メモ、献立登場日、献立登場回数を表示。

    [![Image from Gyazo](https://i.gyazo.com/f8e1f7ea20caf8ee09d0350ece1367d6.png)](https://gyazo.com/f8e1f7ea20caf8ee09d0350ece1367d6)

# 実装予定の機能
- ユーザー登録
- ルーム作成
- ルーム入室申請
- ルーム入室申請取消
- ルーム入室承認
- メニュー登録
- 献立予定登録
- 献立取消

# テーブル設計

## usersテーブル

| Column    | Type    | Options                   |
| --------- | ------- | ------------------------- |
| name      | string  | null: false               |
| email     | string  | null: false, unique: true |
| password  | string  | null: false               |
| room_key  | string  |                           |

### association

- has_one :room

## roomsテーブル

| Column    | Type       | Options                    |
| --------- | ---------- | -------------------------- |
| room_name | string     | null: false                |
| key       | string     | null: false, unique: true  |
| rule      | text       |                            |
| member1   | string     |                            |
| email1    | string     |                            |
| member2   | string     |                            |
| email2    | string     |                            |
| member3   | string     |                            |
| email3    | string     |                            |
| member4   | string     |                            |
| email4    | string     |                            |
| member5   | string     |                            |
| email5    | string     |                            |
| member6   | string     |                            |
| email6    | string     |                            |
| member7   | string     |                            |
| email7    | string     |                            |
| member8   | string     |                            |
| email8    | string     |                            |
| member9   | string     |                            |
| email9    | string     |                            |
| user_id   | references | null: false, foreign: true |

### association

- belongs_to :user
- has_many :menus
- has_many :schedules

## menusテーブル

| Column    | Type       | Options                    |
| --------- | ---------- | -------------------------- |
| cook_name | string     | null: false                |
| memo      | string     |                            |
| room_id   | references | null: false, foreign: true |

### association

- belongs_to :room

## schedulesテーブル

| Column  | Type       | Options                    |
| ------- | ---------- | -------------------------- |
| date    | date       | null: false                |
| menu_id | integer    | null: false                |
| room_id | references | null: false, foreign: true |

### association

- belongs_to :room