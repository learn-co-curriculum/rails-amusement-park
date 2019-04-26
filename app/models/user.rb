class User < ActiveRecord::Base
  has_secure_password

  validates :name, :password_digest, presence: true

  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.happiness && self.nausea
      if self.happiness >= self.nausea
        return "happy"
      else
        return "sad"
      end
    end
  end
end
