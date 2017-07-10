class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def add_appearance
    @guests = Guest.all
    @episodes = Episode.all
  end

  def success
    if params[:episode][:id] == nil || params[:guest][:name] == nil
      redirect_to '/users/add_appearance'
    else
      @guest_episode = GuestEpisode.new
      @guest_episode.episode_id = params[:episode][:id]
      @guest_episode.guest_id = Guest.find_by(name: params[:guest][:name]).id
      @guest_episode.save
    end
  end
end
