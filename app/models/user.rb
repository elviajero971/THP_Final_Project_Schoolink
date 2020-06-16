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
  validates :description, length: {maximum: 350}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_validation :downcase_email
  after_create :welcome_send

  has_many :subjects, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_one_attached :profile_pic

  extend FriendlyId
  friendly_id :nickname, use: :slugged

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
  def should_generate_new_friendly_id?
    slug.blank? || nickname_changed?
  end

private

  def downcase_email
    self.email = email.downcase if email.present?
  end
  
end
