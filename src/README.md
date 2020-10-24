## src概要

Life is Tech!のWebSコースのスクール素材テンプレートを使用しています。

### ディレクトリ構成
- db
  - migrate
    + 20201024100426_create_samples.rb
  + schema.rb
- public
  + stylesheet.css
- views
  + indec.html
+ .gitignore
+ app.rb
+ config.rb
+ Gemfile
+ models.rb
+ Rakefile
+ README

### Setup

```
1. スクールのDocker imageをAttach Shell
2. Volumeをsrcのところに設定
3. bundlerを使用
  $ bundle install
4. migrateできるかTest
  $ rake db:migrate
```
