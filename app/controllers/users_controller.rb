class UsersController < ApplicationController

  def inbox
    respond_to do |format|
      format.js
    end
  end


end
