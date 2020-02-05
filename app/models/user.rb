class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :words


    def create
      @user = User.new(user_params) #user_paramsはPOSTデータをチェックするメソッド
    
      # if @user.save
      #   flash[:success] = '新しいユーザーを登録しました。'
      #   redirect_to @user
      # else
      #   flash.now[:danger] = 'ユーザーの登録に失敗しました。'
      #   render :new
      # end
    end
  def show
    @user = User.find(params[:id])
  end



end
