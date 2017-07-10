class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode_id = GuestEpisode.where(episode_id: params[:id])
    byebug
    @episode = Episode.find(@episode_id.episode_id)
    @guests = Guest.all.select do |guest|
      guest.id == @episode_id.guest_id
    end
  end
end
