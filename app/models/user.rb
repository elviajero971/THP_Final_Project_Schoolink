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
  has_many :modifications

  has_one_attached :profile_pic

  extend FriendlyId
  friendly_id :nickname, use: :slugged

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
  def should_generate_new_friendly_id?
    slug.blank? || nickname_changed?
  end

  def how_many_favorites?
    f = 0
    JoinFavSubject.all.each do |s|
      if s.user_id == self.id
        f += 1
      end
    end
    return f
  end

  def how_many_inprogress?
    i = 0
    JoinReadSubject.all.each do |s|
      if s.user_id == self.id
        i += 1
      end
    end
    return i 
  end

  def how_many_validate?
    v = 0
    JoinValidateSubject.all.each do |s|
      if s.user_id == self.id
        v += 1
      end
    end
    return v 
  end

  def how_many_modif_received?
    r = 0
    Modification.all.each do |modif|
      if modif.subject.user.id == self.id
        r += 1
      end
    end
    return r
  end

  def how_many_modif_sent?
    s = 0
    Modification.all.each do |modif|
      if modif.user_id == self.id
        s += 1
      end
    end
    return s
  end

  def has_notification?
    Modification.all.each do |modif|
      if modif.user_id == self.id && modif.done == false
        return true
      else
        return false
      end
    end
  end

  def how_many_notification?
    n = 0
    Modification.all.each do |modif|
      if modif.subject.user.id == self.id && modif.done == false
        n += 1
      end
    end
    return n
  end

private

  def downcase_email
    self.email = email.downcase if email.present?
  end
  
end
