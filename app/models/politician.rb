class Politician < ApplicationRecord
  has_many :politician_scores
  has_many :politician_links
  has_many :political_parties, through: :politician_links
  validates :party, :first_name, :last_name, presence: true
  # validates :rank, presence: true, inclusion: { in: ["Party Leader", "Cabinet", "Shadow Cabinet", "Backbencher", "Other"] }
  include PgSearch

  attr_reader :rank

  pg_search_scope :search_politicians,
    against: [ :first_name, :last_name, :party ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  mount_uploader :photo, PhotoUploader

    # if no photo uploded will display from stock photos
  def cl_photo
      if photo?
        photo
      else
       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb0kZ2CA6D46RXZVJ3dvJPusC66fBq1uENE8jN3q8golJ73Ayd'
     end
  end

  def name
    "#{first_name} #{last_name}"
  end
end
