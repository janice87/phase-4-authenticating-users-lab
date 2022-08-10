class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id 
        render json: user
    end
    # Find a user in the database using the username from params
    # Save the user's ID to the session hash
    # Return the user as a JSON object

    def destroy
        session.delete :user_id
        head :no_content
    end
    # Remove the user ID from the session hash
    # Return an empty response with a 204 No Content status code
end
