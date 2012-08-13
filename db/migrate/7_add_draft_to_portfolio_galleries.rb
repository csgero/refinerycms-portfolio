class AddDraftToPortfolioGalleries < ActiveRecord::Migration
  def change
    add_column :refinery_portfolio_galleries, :draft, :boolean, :default => false
  end
end