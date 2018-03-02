class LanguagesController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_language, only: [:show,:update,:edit,:destroy]

#index->データの一覧の表示
def index
 #mythreadのデータの全件取得
 @languages = Language.all
end
#show->個別データの表示
def show
#before_actionでデータの取得は完了している
end

#new->新規作成ページの表示
def new
 #モデルオブジェクトの生成
 @languages = Language.new
end

#create->新規データの登録
def create
 #formのデータを受け取る
 @languages =Language.create(language_params)
 #saveメソッドでデータをセーブ　*newメソッド + saveメソッド = createメソッド
 if @languages.save
   #saveが完了したら、一覧ページへリダイレクト
   redirect_to languages_path
 else
   #saveを失敗すると新規作成ページへ
   render 'new'
 end
end

#edit->編集ページの表示
def edit
#before_actionでデータの取得は完了している
end

#update->編集のアップデート
def update
 #編集データの取得
 if @languages.update(language_params)
   #updateが完了したら一覧ページへリダイレクト
   redirect_to languages_path
 else
   #updateを失敗すると編集ページへ
   render 'edit'
 end
end

#destroy->データの削除
def destroy
 #データの削除
  @languages.destroy
 #一覧ページへリダイレクト
 redirect_to languages_path
end

private
#strong parameters リクエストパラメターの検証（これがないとうまくいかないので注意）
def language_params
 params.require(:language).permit(:context, :image)
end

#共通処理なので、before_actionで呼び出している
def set_language
#特定データの取得
 @languages = Language.find(params[:id])
end
def login_check
  if session[:user_id].nil?
    redirect_to sessions_path
  end
end
end
