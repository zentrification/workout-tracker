class User < ApplicationRecord
  devise :database_authenticatable, :omniauthable, :rememberable, :trackable, :validatable

  has_many :workouts

  def self.from_omniauth(token)
    data = token.info
    #Rails.logger << data
    User.find_by_email(data['email']) || User.create_from_omniauth(data)
  end

  def self.create_from_omniauth(data)
    User.create(
      name: data['name'],
      email: data['email'],
      password: Devise.friendly_token[0,20],
    )
  end

end
