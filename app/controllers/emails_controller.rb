class EmailsController < ApplicationController
  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to email_path(@email) }
      format.js {}
    end
  end

  def index
    @emails = Email.all.sort_by(&:created_at).reverse
  end

  def create
    @email = Email.create_fake
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js {}
    end
  end
end
