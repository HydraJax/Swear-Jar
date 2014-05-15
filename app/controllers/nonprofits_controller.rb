class NonprofitsController < ApplicationController

# this variable was made to have something to pass to the page
  def new
    @nonprofit = Nonprofit.new
  end
# It looks like you are no longer using the above method, as there is no new.html.erb page.
# I would try going back and deleting methods like this that you are not using.

  def create
    donation = params.require(:donation).permit(:name, :amount)
    nonprofit = current_user.nonprofits.create(donation)
    # redirect_to nonprofit_path(nonprofit.id)
      redirect_to results_path(nonprofit.id)
  end

# this searches the nonprofits table to find JUST the nonprofits that the currently signed on user has donated to....I got lots of help on this
  def show
    # In following rails conventions I would rename this variable @nonprofits
    # The variable name should be based on what return value has been assigned to it,
    # as opposed to what you did to get that value
    @nonprofits_search = Nonprofit.where(:user_id => current_user.id)
    # This variable assignment is unnecessary as you can call on current_user from
    # both your controllers and views
    @user = current_user
  end
end
