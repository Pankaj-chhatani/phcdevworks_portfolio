module PhcdevworksPortfolio
  class Project::Type < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'PhcdevworksPortfolio::ProjectTypeVersions'

    # Relationships
    belongs_to :user, class_name: "PhcdevworksAccounts::User"
    has_and_belongs_to_many :posts, class_name: "Project::Post", :join_table => "phcdevworks_portfolio_project_posts_types", :dependent => :destroy

    # Clean URL Define
    friendly_id :project_type_nice_urls, use: [:slugged, :finders]

    def project_type_nice_urls
      [:project_type_name]
    end

  end
end
