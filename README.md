# KansaiGreenTeam

2020 関西緑チームのが使用するリポジトリです

---

## ファイル構成

- .github/workflows
  - ci.yml
- `LICENSE.md`
  - [LICENSE.md](#https://github.com/turbott/KansaiGreenTeam/blob/main/LICENSE.md/LICENSE.md)
- [README.md](#https://github.com/turbott/KansaiGreenTeam/blob/main/README.md)
- db
- public
- views

---

Life is Tech!の WebS コースのスクール素材テンプレートを使用しています。

### ディレクトリ構成

- db
  - migrate
    - 20201024100426_create_samples.rb
  * schema.rb
- public
  - stylesheet.css
- views
  - indec.html

* .gitignore
* app.rb
* config.rb
* Gemfile
* models.rb
* Rakefile
* README

### Setup

```
1. スクールのDocker imageをAttach Shell
2. Volumeをsrcのところに設定
3. bundlerを使用
  $ bundle install
4. migrateできるかTest
  $ rake db:migrate
```

## 編集遍歴

- main
  - feature/ci(2020/10/22)
    - ruby / html / css 用の formatter を導入(しゅんや)
  - feature/template data(2020/10/25)
    - 編集できるようにテンプレートデータを school 素材から少し改変して導入(しゅんや)
  - feature/template data(2020/10/25)
    - 編集できるようにテンプレートデータを school 素材から少し改変して導入(しゅんや)
  - CI回るようなんだかんだ(2020/10/27)
---
