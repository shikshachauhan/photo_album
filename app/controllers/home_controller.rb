class HomeController < ApplicationController
  def index
    @photos = Photo.where(alt: get_type)
  end

  private
    def get_type
      params[:type] = params[:type] || 'fashion'
      result = nil
      Photo::Tabs.each do |type|
        result = type if type.downcase.gsub(' ', '') == params[:type]
      end
      result
    end
end
