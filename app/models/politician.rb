class Politician < ApplicationRecord
  has_one :politicians_score
  has_many :politician_links
  has_many :political_parties, through: :politician_links

  include PgSearch

  pg_search_scope :search_politicians,
    against: [ :first_name, :last_name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
