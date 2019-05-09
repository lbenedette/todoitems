class User < ApplicationRecord
  has_many :tasks

  def self.log_or_create(facebook_id)
    user = find_by(:facebook_id => facebook_id)
    if user
      return user
    end
    return create(:facebook_id => facebook_id)
  end
end
