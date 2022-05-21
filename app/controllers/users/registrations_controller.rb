
class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      user_data = UserSerializer.new(resource).serializable_hash[:data][:attributes]
      render json: {
        status: {code: 200, message: 'Signed up sucessfully.'},
        data: user_data
      }
    else
      render json: {
        status: {message: "User couldn't be created successfully. #{resource.errors.full_messages.to_sentence}"}
      }, status: :unprocessable_entity
    end
  end
end