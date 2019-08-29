# recipe_box レシピボックス

## 参照ページ
https://github.com/TimingJL/recipe_box

■requireメソッドとpermitメソッド
https://qiita.com/morikuma709/items/2dc20d922409ae7ce216

■Simple Form
https://github.com/plataformatec/simple_form
https://qiita.com/Inp/items/4f72918c2fba0d3a8809
https://qiita.com/sibakenY/items/951244811404b8e4d38b
https://qiita.com/gotchane/items/93577732f4984712d4c7

■Zurb Foundation
https://qiita.com/kohki-shikata/items/bd6cfda580a54159232e

■HTML Multipart
https://www.yoheim.net/blog.php?q=20171201


■Simple Form でerror 'model_name' for NilClass:Class
http://banker0507.blogspot.com/2012/05/rails323error-modelname-for.html
以下の変更で解決
```
def new
end
↓
def new
@recipe = Recipe.new
end
```

■BootStrap で Flash Message
http://ariarichan.hateblo.jp/entry/2016/06/17/145816

■Paper Clip
https://qiita.com/chamao/items/181451a0f6d875a3c407
https://qiita.com/k19911848/items/57b52c65027796ac1440

■Cocoon
https://github.com/nathanvda/cocoon
https://qiita.com/Matsushin/items/4829e12da2834d6e386e

■Missing partial recipes/_direction_fields のエラー
```
Missing partial recipes/_direction_fields, application/_direction_fields with {:locale=>[:en], :formats=>[:html], :variants=>[], :handlers=>[:raw, :erb, :html, :builder, :ruby, :coffee, :jbuilder, :haml]}. Searched in:
```

`app/views/recipes/`の下に`_direction_fields.html.haml`を作成。


■`Directions`が`・= direction.step`と表示される
```
%li = direction.step
↓
%li= direction.step
```


```
undefined method `current_sign_in_at' for #<User:0x007f2154b54790>
```

■undefined method `current_sign_in_at'のエラー
https://qiita.com/dossy/items/1a2f34774a6139f44e18
https://stackoverflow.com/questions/55735895/nomethoderror-undefined-method-current-sign-in-at-for-user0x000055ce01dcf0a

### １．Trackableを有効にする
```
 ## Trackable
  #    t.integer  :sign_in_count, default: 0, null: false
  #    t.datetime :current_sign_in_at
  #    t.datetime :last_sign_in_at
  #    t.string   :current_sign_in_ip
  #    t.string   :last_sign_in_ip

↓

 ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
```

### 2．Migrateを戻す
`rake db:migrate:down VERSION=<Trackable無効でmigrateした時のファイル名>`

###3．再度Migrateする
rake db:migrate up VERSION=<Trackable無効でmigrateした時のファイル名>
