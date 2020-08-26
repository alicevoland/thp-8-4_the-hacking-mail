class Email < ApplicationRecord
  def self.create_fake
    Email.create(
      object: Faker::Book.title,
      body: Faker::TvShows::Suits.quote,
      read: false
    )
  end

  def read_status
    read ? 'read' : 'unread'
  end
end
