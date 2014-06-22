# Git Workflow for Small Team

AS Tech Talk 第3回の資料です。

* [発表資料](GitWorkflowForSmallTeam.md)
* Git関連
    * [Git](http://git-scm.com/)
    * [GitLab](https://www.gitlab.com/downloads/)
    * [SourceTree](http://www.sourcetreeapp.com/)
    * [A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)
* 関連サービス/プロダクト等
    * [Bitbucket](https://bitbucket.org/)
    * [Google Code](https://code.google.com/)
    * [JIRA](https://www.atlassian.com/ja/software/jira)
    * [Travis CI](https://travis-ci.org/)
    * [Vagrant](http://www.vagrantup.com/)
* PR
    * [md-slide-android](https://github.com/ksoichiro/md-slide-android)
    * [gitlab-i18n-patch](https://github.com/ksoichiro/gitlab-i18n-patch)
    * [mobiRoom](https://play.google.com/store/apps/details?id=mobi.mobiroom)

## スライド生成に必要なもの(reveal.js)

`build.sh`でreveal.jsのスライドを生成します。

* npm
* grunt-cli
* reveal.js
* docker
* ruby
* sass

### 初回セットアップ(Mac)

```sh
$ brew install npm
$ npm install -g grunt-cli
$ cd reveal.js
$ npm install
$ gem install sass
```

### テーマの更新

1. `config/reveal.js/css/theme/source/default.scss`を編集
1. `./build.sh`でビルド
1. `slide.html`が完成したスライド

## md-slide-androidでの閲覧

1. デバイスにmdファイルを送信(adb pushやダウンロード等)
1. md-slideをインストール
1. ESエクスプローラ等からmd-slideを使って開く

## ライセンス

    Copyright 2014 Soichiro Kashima

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
