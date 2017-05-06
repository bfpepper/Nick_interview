class User < ApplicationRecord

  validates :first_name,
            :last_name,
            :email,
            :social_security_number,
            presence: true

  validates :social_security_number, length: { is: 9 }

  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i

end
