class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def about
    @title = "About Us"
  end

  def gallery
    @title = "Gallery"
  end

  def testimonials
    @title = "Testimonials"
  end

  def contact
    @title = "Contact Us"
  end
end
