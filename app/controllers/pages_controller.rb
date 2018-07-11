class PagesController < ApplicationController
  def home
  	@hosts = Blog.all
  	@skills = Skill.all
  end

  def about
  end

  def contact
  end
end
