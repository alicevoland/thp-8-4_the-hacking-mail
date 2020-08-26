class EmailsController < ApplicationController
  def show
    @email = Email.find(params[:id])
  end

  def index
    @emails = Email.all.sort_by(&:created_at).reverse
  end
end
