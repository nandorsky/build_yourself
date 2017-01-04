class PagesController < ApplicationController
  def home
    @weeks = Week.all
  end
end
