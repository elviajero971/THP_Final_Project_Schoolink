class Contact < ApplicationRecord
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  def headers
    {
      :subject => "WhiteBoard message",
      :to => "whiteboard.thp@gmail.com",
      :from => %("#{nickname}" <#{email}>)
    }
  end
end
