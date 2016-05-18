class MembershipController < ApplicationController
  before_action :authenticate_user!
  def orientalqueens
    redirect_to root_path, :notice => "Access denied." unless current_user.oq?
  end
  
  def silver
    redirect_to root_path, :notice => "Access denied." unless current_user.silver?
  end

  def gold
    redirect_to root_path, :notice => "Access denied." unless current_user.gold?
  end

  def platinum
    redirect_to root_path, :notice => "Access denied." unless current_user.platinum?
  end
end
