
# LineMarker

線状に一定間隔でコマンドを実行させられるライブラリ

</div>

## 動作確認バージョン

- 1.19

## ダウンロード

[こちら](https://github.com/Ron_Tya_MC/LineMarker/releases)からダウンロードできます

## 使い方

### 始点、終点を設定する

始点に"LM.Line_start"、終点に"LM.Line_end"タグをつけます

例:

```mcfunction
# 自身を始点、最寄りのゾンビを終点にする
    tag @s add LM.Line_start
    tag @e[type=zombie,limit=1,sort=nearest] add LM.Line_end_
```

### 引数を指定する

storageに値を入れることで線の位置や長さを変更できます
未記入部分は初期値が代入されます

| 引数名 | 型 | 初期値 | 説明 |
|:---|:---|:---:|:---|
| Argument.ID | Any | - | どの型を入れてもok。実行コマンドでの判別用。 |
| Argument.Range | float | 40.0f | 射程。0以下に設定すると初期値になる。 |
| Argument.Interval | float | 0.25f | 何ブロックごとにコマンドを実行するかの引数。|
| Argument.StartYOffset | float | 0.0f | 開始するときのY座標上のオフセット。 |
| Argument.StartSideOffset | float | 0.0f | 開始するときの視点を基準とした横方向のオフセット。 |
| Argument.StartForwardOffset | float | 0.0f | 開始するときの視点を基準とした前後方向のオフセット。 |
| Argument.TargetYOffset | float | 0.0f | 終点のY座標上のオフセット。 |
| Argument.EnableOutOfRange | bool | true | 射程が足りないとき実行するか否か。 |

例:

```mcfunction
# 射程10、オフセットなしで0.25ブロックごとに実行
    data merge storage line_marker: {Argument:{ID:"Example1",Range:10.0f,Interval:0.25f}}

# 射程25、始点の足元から終点の２ブロック上に向けて0.5ブロックごとに実行
    data merge storage line_marker: {Argument:{ID:"Example2",Range:25.0f,Interval:0.5f,TargetYOffset:2.0f}}

# 射程5、射程内に収まる時だけ0.2ブロックごとに実行
    data merge storage line_marker: {Argument:{ID:"Example3",Range:5.0f,Interval:0.2f,EnableOutOfRange:0b}}
```

### 実行

```mcfunction
    function line_marker:api/execute
```

### 各地点でのfunction実行

#### 一区間ごとに実行するfunction

`data/line_marker/tag/functions/repeat.json`内に任意のfunctionのパスを記入すればラインの一区間ごとに実行される
デフォルトだと`sample:repeat`が入っている

```json
{
    "replace": false,
    "values": [
        "sample:repeat"
    ]
}
```

#### 終点で実行するfunction

`data/line_marker/tag/functions/end.json`内に任意のfunctionのパスを記入すればラインの終点で実行される
デフォルトだと`sample:end`が入っている

```json
{
    "replace": false,
    "values": [
        "sample:end"
    ]
}
```

### 補足

実行者を書き換えずに実行するため実行functionに@sなどを入れるとAPIの実行者が実行する
`sample:end`

```mcfunction
effect give @s glowing 1 1 true
```

この場合`line_marker:api/execute`を実行したエンティティに発光が付与される

## 注意

- Argument.Intervalを小さくしすぎると最大コマンド数を超える恐れあり。

## ライセンス

[CC0-1.0](LICENSE)
