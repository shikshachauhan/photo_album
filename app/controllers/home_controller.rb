class HomeController < ApplicationController
  def index
    @photos = Photo.where(alt: get_type)
  end

  private
    def get_type
      result = nil
      Photo::Tabs.each do |type|
        result = type if type.downcase.gsub(' ', '') == params[:type]
      end
      result
    end
end
