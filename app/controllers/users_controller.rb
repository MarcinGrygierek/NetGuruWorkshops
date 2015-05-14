class UsersController < ApplicationController
	before_action :authenticate_user!

	expose(:user)
	expose(:reviews)

	def show
    @review_counter = 0
    @user = User.find(params[:id])

    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end
  end
end
