class SessionsController < ApplicationController
before_action :block_access, except: [:destroy]
  def create  
            @mestre = Mestre.find_by(name: params[:session][:name].downcase)
            if @mestre[:secret] == (params[:session][:secret])
                        sign_in()#@mestre)
            redirect_to games_path
    else
            render 'new'
    end
  end
end