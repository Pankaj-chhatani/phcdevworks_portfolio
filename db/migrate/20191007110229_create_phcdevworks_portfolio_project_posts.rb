class CreatePhcdevworksPortfolioProjectPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_portfolio_project_posts do |t|

      t.string :project_post_title
      t.text :project_post_description
      t.string :project_post_url
      t.string :project_post_type
      t.string :project_post_status
      t.string :project_post_image
      t.string :project_post_images

      t.timestamps

    end
  end
end