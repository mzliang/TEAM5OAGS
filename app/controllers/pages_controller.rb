class PagesController < ApplicationController
  def home
    @title = 'Home'
  end

  def about
    @title = 'About us'
  end

  def gallery
    @title = 'Gallery'
  end

  def testimonials
    @title = 'Testimonials'
  end

  def contact
    @title = 'Contact us'

  end

  def about_site
    @title = "About this site"
  end
end
