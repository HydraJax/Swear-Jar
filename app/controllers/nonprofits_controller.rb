class NonprofitsController < ApplicationController

  def new
    @nonprofits = Nonprofits.new
  end

def create
   donation = params.require(:donation).permit(:name, :amount)
   nonprofit = current_user.nonprofits.create(donation)
   redirect_to nonprofit_path(nonprofit.id)
end


def show
  
 
end


end
