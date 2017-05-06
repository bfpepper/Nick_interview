class Api::V1::UsersController < Api::ApiController

  def create
    user = User.create(first_name: params[:user][:first_name],
                last_name: params[:user][:last_name],
                email: params[:user][:email],
                social_security_number: params[:user][:social])
    if user.save
      render json: user
    end
  end

end
