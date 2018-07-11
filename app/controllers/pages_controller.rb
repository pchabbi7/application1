class PagesController < ApplicationController
  def home
  	@hosts = Blog.all
  end

  def about
  end

  def contact
  end
end
