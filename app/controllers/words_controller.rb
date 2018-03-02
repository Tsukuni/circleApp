class WordsController < ApplicationController
  before_action :set_word, only: [:show,:update,:edit,:destroy]

#index->データの一覧の表示
def index
 #mythreadのデータの全件取得
 @words = Word.all
end
#show->個別データの表示
def show
#before_actionでデータの取得は完了している
end

#new->新規作成ページの表示
def new
 #モデルオブジェクトの生成
 @words = Word.new
end

#create->新規データの登録
def create
 #formのデータを受け取る
 @words =Word.create(word_params)
 #saveメソッドでデータをセーブ　*newメソッド + saveメソッド = createメソッド
 if @words.save
   #saveが完了したら、一覧ページへリダイレクト
   redirect_to words_path
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
 if @words.update(word_params)
   #updateが完了したら一覧ページへリダイレクト
   redirect_to words_path
 else
   #updateを失敗すると編集ページへ
   render 'edit'
 end
end

#destroy->データの削除
def destroy
 #データの削除
  @words.destroy
 #一覧ページへリダイレクト
 redirect_to words_path
end

private
#strong parameters リクエストパラメターの検証（これがないとうまくいかないので注意）
def word_params
 params.require(:word).permit(:name, :veryEasy ,:easy ,:normal ,:hard ,:veryHard ,:context)
end

#共通処理なので、before_actionで呼び出している
def set_word
#特定データの取得
 @words = Word.find(params[:id])
end
end
