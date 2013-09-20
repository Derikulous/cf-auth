class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, presence: :true, length: { maximum: 50 }
  validates :last_name, presence: :true, length: { maximum: 50 }
  validates_format_of :email, uniqueness: true,
  with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: "Must be a valid email address"

  def name
    [first_name, last_name].join(' ')
  end

  def email=(value)
    value = value.strip.downcase
    write_attribute :email, value
  end
end
