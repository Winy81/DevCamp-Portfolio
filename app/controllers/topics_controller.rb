class TopicsController < ApplicationController
	layout 'blog'
  def index
  	@topics = Topic.all
  end

  def show
  	@topic = Topic.find(params[:id])

  	
  	 if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.all
    else
      @blogs = @topic.blogs.published.recent.all 
    end
  end
end
