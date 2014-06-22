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

## スライド生成に必要なもの

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

