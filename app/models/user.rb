class User < ApplicationRecord
  validates :nickname, uniqueness: true, presence: true
  validates :password, presence: true,
                       confirmation: true,
                       length: {within: 6..40},
                       on: :create
  validates :password, confirmation: true,
                       length: {within: 6..40},
                       allow_blank: true,
                       on: :update

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_validation :downcase_email
  after_create :welcome_send

  has_many :subjects, dependent: :destroy

  has_one_attached :profile_pic

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end


private

  def downcase_email
    self.email = email.downcase if email.present?
  end
  
end
