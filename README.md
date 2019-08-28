# recipe_box

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

