module Refinery
  module Portfolio
    class GalleriesController < ::ApplicationController

      before_filter :find_page

      def index
        @galleries = Gallery.roots.live
        @items = Item.root_items
        present(@page)
      end

      def show
        @gallery = Gallery.find(params[:id])
        @galleries = @gallery.children.live
        @items = @gallery.items
        present(@page)

        render :action => "index"
      end

    protected

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/galleries").first
      end

    end
  end
end
