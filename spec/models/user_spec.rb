require 'rails_helper'

RSpec.describe User, type: :model do

  context "Validations" do
    it { should validate_presence_of(:first_name)}
    it { should validate_presence_of(:last_name)}
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:social_security_number)}
    it { should allow_value("email@addresse.com").for(:email)}
    it { should validate_length_of(:social_security_number).is_equal_to(9) }
  end

end
