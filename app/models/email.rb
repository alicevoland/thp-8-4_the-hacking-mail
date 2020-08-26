class Email < ApplicationRecord
  def self.create_fake
    Email.create(
      object: Faker::Book.title,
      body: Faker::TvShows::Suits.quote
    )
  end
end
