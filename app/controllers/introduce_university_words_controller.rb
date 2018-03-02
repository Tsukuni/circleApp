class IntroduceUniversityWordsController < ApplicationController
  before_action :login_check, only: %i(index new edit create update destroy)
  before_action :set_introduceUniversityWord, only: [:show,:update,:edit,:destroy]

  #index->データの一覧の表示
  def index
   #mythreadのデータの全件取得
   @introduceUniversityWords = IntroduceUniversityWord.all
  end
  #show->個別データの表示
  def show
  #before_actionでデータの取得は完了している
  end

  #new->新規作成ページの表示
  def new
   #モデルオブジェクトの生成
   @introduceUniversityWords = IntroduceUniversityWord.new
  end

  #create->新規データの登録
  def create
   #formのデータを受け取る
   @introduceUniversityWords =IntroduceUniversityWord.create(introduceUniversityWords_params)
   #saveメソッドでデータをセーブ　*newメソッド + saveメソッド = createメソッド
   if @introduceUniversityWords.save
     #saveが完了したら、一覧ページへリダイレクト
     redirect_to introduce_university_words_path
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
   if @introduceUniversityWords.update(introduceUniversityWords_params)
     #updateが完了したら一覧ページへリダイレクト
     redirect_to introduce_university_words_path
   else
     #updateを失敗すると編集ページへ
     render 'edit'
   end
  end

  #destroy->データの削除
  def destroy
   #データの削除
    @introduceUniversityWords.destroy
   #一覧ページへリダイレクト
   redirect_to introduce_university_words_path
  end

  private
  #strong parameters リクエストパラメターの検証（これがないとうまくいかないので注意）
    def introduceUniversityWords_params
     params.require(:introduce_university_word).permit(:title, :meaning, :example)
    end

    #共通処理なので、before_actionで呼び出している
    def set_introduceUniversityWord
    #特定データの取得
     @introduceUniversityWords = IntroduceUniversityWord.find(params[:id])
    end
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
