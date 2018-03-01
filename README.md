[![Build Status](https://travis-ci.org/yu-san-19/redirect-next-event.svg?branch=master)](https://travis-ci.org/yu-san-19/redirect-next-event)

# Redirect next event

Connpass のAPIをたたいて最新のイベントにリダイレクトさせるだけ。

## 仕組み

クエリを以下に設定して

https://connpass.com/api/v1/event/?series_id=3786&order=1&keyword=CoderDojo+%E5%B2%A1%E5%B1%B1+%E5%B2%A1%E5%8D%97

GETで帰ってきたやつの中からURLと日時を取得して

その日よりも先にあるイベントがあったらそのイベントにリダイレクトさせる

なかったら準備中ページにリダイレクトさせる

おそらくRails使う必要なかった。（最初はもっと規模を大きくするつもりだったから今後大きくするかも。）

## 今後

@CoderDojo-Konan-Okayama にリポジトリを移転させる？ #2

自由にクエリをGUI的な操作で変更できるようにしたい。 #3