class DoohickeysController < ApplicationController

  def index
    @doohickeys = Doohickey.order(:name).all
  end

  def new
    @doohickey = Doohickey.new
  end

  def create
    @doohickey = Doohickey.new(params[:doohickey])
    if @doohickey.save
      redirect_to doohickeys_path
    else
      render :new
    end
  end

end
