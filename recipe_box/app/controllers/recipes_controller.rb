class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]


# 一覧を表示
  def index
    @recipe = Recipe.all.order("created_at DESC")
  end

# 詳細を表示
  def show
  end

# 新規登録
  def new
      @recipe = Recipe.new
  end

# 
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe, notice: "Successfully created new recipe"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path, notice: "Successfully deleted recipe"
  end



# このファイル内のみで有効
  private

# recipeのtitleとdescriptionを許可する
  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end

# レシピテーブルの該当のidのデータを取得する
  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

end
