class Mixtapes::UsersController < ApplicationController

  def new
    @mixtape = Mixtape.find(params[:mixtape_id])
    @mixtape_user = UserMixtape.new
    @users = User.all - @mixtape.users
  end

  def create
    UserMixtape.create(user_mixtape_params)
    redirect_to mixtape_path(params[:user_mixtape][:mixtape_id])
  end

  private

    def user_mixtape_params
      params.require(:user_mixtape).permit(:user_id, :mixtape_id)
    end

end

#  new_mixtape_song GET    /mixtapes/:mixtape_id/songs/new(.:format)      mixtapes/songs#new
