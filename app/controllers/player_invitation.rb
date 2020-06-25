class Players::InvitationsController < Devise::InvitationsController
  def update
    puts "$" * 60
    redirect_to player_path
  end

  def edit
    puts "$" * 60
    redirect_to player_path
  end
end