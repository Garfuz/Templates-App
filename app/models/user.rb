class User < ApplicationRecord

  has_secure_password

  has_one :webpage

  email_regex = /\A[\w|-]+@[\w|-]+\.[a-z][a-z]+\z/i

  validates :name,    :presence   => true,
            :length               => { :maximum => 50 }

  validates :email,   :presence   => true,
            :format               => { :with => email_regex },
            :uniqueness           => { :case_sensitive => false }

  validates :password,  :presence => true,
            :confirmation         => true,
            :length               => { :within => 6..40 }

end
