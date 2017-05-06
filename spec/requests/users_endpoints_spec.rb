require "rails_helper"

describe "users endpoints" do
  context 'POAT /api/v1/users' do
    it 'returns a user object with first/last name, and email' do

      data = { user: { first_name: "Bill",
                       last_name: "Smart",
                       email: "test@test.com",
                       social: "111111111"
                      } }

      post "/api/v1/users", data.to_json, { 'CONTENT_TYPE' => 'application/json'}

      post_result = JSON.parse(response.body)

      expect(post_result['first_name']).to eq('Bill')
      expect(post_result['last_name']).to eq('Smart')
      expect(post_result['email']).to eq('test@test.com')

    end
  end
end
