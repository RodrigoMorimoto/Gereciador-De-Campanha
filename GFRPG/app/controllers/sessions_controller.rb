class SessionsController < ApplicationController
before_action :block_access, except: [:destroy]
  def create
            @mestre = Mestre.find_by(name: params[:session][:name].downcase)
            if @mestre.nil?
                redirect_to root_path
            else
                if @mestre[:secret] == (params[:session][:secret])
                                #sign_in(@mestre)
                        cookies[:mestre] = @mestre[:id]
                        redirect_to games_path
                else
                        redirect_to root_path
                end
        end
  end
end