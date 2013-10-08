class PagesController < ApplicationController
  def index
  	@event = Event.find(1)
  	today = Date.today
  	@weekly = Event.where("event_type = ? AND event_date >= ?", 'Showing', today).first
  	@social = Event.where("event_type = ? AND event_date >= ?", 'Manga Social', today).first
  	@gamenight = Event.where("event_type = ? AND event_date >= ?", 'Game Night', today).first
  	@posts = Post.find(:all, :order => "id desc", :limit => 5)
  end
end
