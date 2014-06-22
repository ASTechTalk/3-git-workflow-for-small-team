# Git Workflow for Small Team

AS Tech Talk Vol.3  
June 23, 2014  
Soichiro Kashima

---

## About me

* GitHub: ksoichiro
    * https://github.com/ksoichiro
* Google Play: sika524
    * https://play.google.com/store/apps/developer?id=sika524

---

## [mobiRoom](https://play.google.com/store/apps/details?id=mobi.mobiroom)

* Android用のyouRoomクライアント
    * Androidデバイスをお持ちの方はぜひ
    * できないこともあります

---

## About my team

* スマートフォンアプリ開発
    * 自社サービス(ライブラリ), 受託開発
* ときどきWeb (API)
* プログラムを書いてるのは5名

---

## Agenda

* バージョン管理
* コラボレーションツール
* ワークフロー
* さらにGitを活用するために

---

## バージョン管理

* 当然使ってますよね…？
* 基本的に生成されるもの以外はすべて登録
* 何をするにもバージョン管理は必須
    * CI、課題管理、etc.

---

## バージョン管理システム(VCS)

* 集中管理型
* 分散管理型(DVCS)
    * Distributed Version Control System
    * Decentralized Version Control System

---

## 集中管理型

* すべて1つの中央リポジトリで管理
* 代表的なもの
    * CVS
    * Subversion
    * VSS

---

## 分散管理型

* リモートとローカルにリポジトリが分散
* 代表的なもの
    * Git
    * Mercurial
    * Bazaar

---

## 分散管理型のいいところ

* コミット失敗してもやり直せる
* コミットしただけでは中央に反映されない
    * コミット/マージした瞬間に壊れたりしない
* 小さく変更しやすい
    * あとでコミットをまとめれば良い
    * 目の前のことに集中できる

---

## Git

* 最も使われているDVCS(たぶん)
* 年々増加傾向にある
    * http://readwrite.jp/archives/4492
* 柔軟な操作ができる

![150%,right](http://git-scm.com/images/logo@2x.png)

---

## Gitでのコミット

* git commitでローカルでのコミット
* git pushでリモートへ反映
* git fetchでリモートから取得(まだ反映しない)
* git pullでローカルに反映

---

## rebase

* 開発してる間にmasterが進んでしまった
* rebaseで最新のmasterから分岐したように修正！
* ただし賛否両論あるのでルールを決めること

---

## コマンドは大変？

* SourceTreeを使おう！

---

## SourceTree

* Atlassian社の提供する無料のGUIツール
* Git, Mercurialに対応
* Windows, OS X対応
* ツリーや差分を確認したい場合に便利
* やっぱり操作はコマンドの方が良い(と思う)

![80%,right](http://www.sourcetreeapp.com/images/logoSourceTree@2x.png)

---

## コマンド

* git commit --amend
* git rebase
* git rebase -i -> squash
* git reset --soft HEAD^
* git rev-parse --short HEAD

---

## ブランチ操作を学ぶなら

* LearningGitBranching
    * http://k.swd.cc/learnGitBranching-ja/
    * ブラウザでgitの操作を学べる
    * 日本語

---

## Collaboration Tools

---

## Collaboration Tools

* チームで開発するための様々な機能を統合
    * 課題管理(ITS) / バグ追跡(BTS)
    * ソースコードレビュー
    * 統計
    * Wiki

---

## Collaboration Tools

* GitHub
* Bitbucket
* Google Code
* JIRA
* Redmine

---

## GitHub

* 説明するまでもない？
* "Pull Request"で変更を取り込んでもらう

![left](https://avatars0.githubusercontent.com/u/583231?s=460)

---

## Pull Request

* 変更をMergeしてください、と依頼できる
* Mergeする前にDiscussion, Reviewできる
* Fork, 修正, PR, Mergeの流れ

---

## 他サービスとの連携

* Pushをトリガーに他サービスへ連携できる
    * CI
    * テストカバレッジのチェック
* (GitHubに限ったことではないが)

---

## ワークフロー

---

## A successful git branching model

* Gitのブランチを駆使したワークフローモデル
* 継続的な開発には向いていると思う
* 継続的な開発でなければやり過ぎかも？

![left,filtered](http://nvie.com/img/2009/12/Screen-shot-2009-12-24-at-11.32.03.png)

---

## Git-flow

* A successful..を実現できるツール
* SourceTreeでも使える

---

## シンプルなモデル

* "動く"ブランチがひとつ(master)
* 開発用のブランチは自由に作る
* デプロイ先が複数ある場合はさらに分けてもいい
    * e.g. 違いは環境設定だけ
* フェーズを区切るための中間を作ってもいい

---

## 環境系パラメータの管理

* 本番用パラメータは別のリモートで管理する
    * 分散型ならではの方法かも？

---

## GitLab

* GitHubクローン
* オンプレミス利用
* 開発が速い(毎月リリース)

![left,filtered](https://about.gitlab.com/images/downloads/bg_omnibus_400.png)

---

## GitLab

* かつてはインストールが大変だった
* 最近はGitLab Omnibus Package(.deb, .rpm)が配布されておりインストールが格段に楽になった
* GitHub的なことが社内でできる
* English only

---

## GitLab

* 課題(Issue)：タスク、課題
* マイルストーン：期限つきで複数の課題をまとめる
* Pull Request(PR) == Merge Request(MR)

---

## GFM

* 課題やMRなど随所の説明テキストでMarkdownが使える
* 参照が便利
    * 課題 → #10
    * コミット → 905702f
    * メンバー → @kashima
    * マージリクエスト → !16

---

## 日本語で使いたい…!

---

## そんな方に：[gitlab-i18n-patch](https://github.com/ksoichiro/gitlab-i18n-patch)

* GitHubクローンのGitLabを勝手に日本語化
    * 数千行からなる汚いパッチです..
    * Git Submoduleでgitlabhqに追随
* v6.6.4 - 6.8.2まで対応済み
* 自己責任でご利用ください

---

## 必要なもの

* GitLabのために使えるWebサーバ
* GitLab Package
* gitlab-i18n-patch
* Gitリポジトリ

---

### 初期構築の場合

```sh
$ cd /opt/gitlab/embedded/service/gitlab-rails
$ patch -p1 < ~/app_ja.patch
```

---

### 既に稼働させている場合

```sh
$ cd /opt/gitlab/embedded/service/gitlab-rails
$ rm -rf public/assets
$ export PATH=$PATH:/opt/gitlab/embedded/bin
$ rake assets:precompile RAILS_ENV=production
```

---

### Vagrantでお試しください

```sh
$ git clone https://github.com/ksoichiro/gitlab-i18n-patch.git
$ cd gitlab-i18n-patch
$ vagrant up v682
```

---

# チームでの運用

---

## 課題ベースの管理

* 要件を"マイルストーン"として作成
* "マイルストーン"に属する"課題"を作成
* 課題は実装観点でやりやすいように細かく分割
* 課題は自由なネーミングのブランチを作成して実装
    * マージしたら要らない

---

## 要修正→課題に登録

* 不具合, リファクタリングなどはラベルで整理
* マイルストーンの残課題0 == 仕様の実装完了

---

## 実装→レビュー

* 自分のブランチで実装、好きなタイミングでコミット
* 実装が終わったらブランチをPush
* MRを作成してレビューアへ連絡

---

## マージリクエストによるレビュー

* レビューアはGitLab上でコメント
    * どこが指摘されてるか一目瞭然
* レビューアはmasterへマージしてPush
* コメントに"Closes #番号"で課題を自動クローズ
* MRの一覧がレビュー記録になる

---

## 良い(良かった)ところ

* 仕様, コミット, レビュー, 不具合...が
    * 同じ枠組みで管理できる
    * 参照を管理しなくて済む
* Excelを使う量が減った
* Minimumに変更してもらいやすい
    * プログラマ/レビューアともに心理的な負担軽減

---

## 悪い(悪かった)ところ

* 結構頻繁にレビューする必要がある
* (今のところこれくらい？)

---

# さらにGitを活用するために

---

## ポイントは？

* 何を変更したか常に把握できることが重要
* 小さい変更なら
    * 集中できる
    * ミスが減る
    * 作業記憶に余裕ができる
* 差分が見えることが重要

---

## 何でも差分が見えるようにしよう

* ソースコード
* ドキュメント → Sphinx, etc.
* 手順書 →Markdown → PDF(Pandoc)
    * Dockerfile (ksoichiro/pandoc)
* 画像 → SVG

---

## 何でも差分が見えるようにしよう

* このスライドもMarkdown
    * HTML: reveal.js, impress.js
    * PDF: Pandoc
    * Mac: Deckset
    * Android: md-slide (作りました)

---

# Thank you!
