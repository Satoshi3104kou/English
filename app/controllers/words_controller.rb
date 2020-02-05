class WordsController < ApplicationController
   before_action :redirect_root, except: [:index, :show,:search]
  def index
    @words = Word.all
  end

  def new
    @word = Word.new
    
  end

  def create

    @word = Word.new(word_params)
    # @word.save
    if @word.save
      # redirect_to words_path #成功の場合
    else        
      flash.now[:alert] = "既に作成されています"
      render 'new' #失敗の場合 
    end

  end

  def show
    
    @word = Word.find(params[:id])


  end


  def edit
    @word = Word.find(params[:id])
    
  end

  def update
    word = Word.find(params[:id])
    word.update(word_params)
   
  end

  def destroy
    word = Word.find(params[:id])
    word.destroy
    
  end


  def search
   
    @word = Word.search(params[:keyword]).first
    
    if @word
      redirect_to word_path(@word)
    else          
      flash[:alert] = "見当たりません。"
      redirect_to :root #失敗の場合 
   
    end
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end


  private
    def word_params
      params.require(:word).permit(:letter, :meaning, :engineer).merge(user_id: current_user.id)
    end
    def redirect_root
      redirect_to root_path unless user_signed_in?
    end

end

