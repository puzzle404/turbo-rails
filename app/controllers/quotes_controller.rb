class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy, :hovercard]

  def index
    @quotes = Quote.ordered

  end

  def show
  end

  def new
    @quote = Quote.new
    @manu = ["manu", "ferrer"]
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      respond_to do |format|
        format.html { redirect_to quotes_path, notice: "Quote was successfully created." }
        format.turbo_stream
        flash.now[:notice] = "Quote was successfully created."
      end
    else

      render :new, status: :unprocessable_entity

    end
  end

  def edit
    @manu = ["manu", "ferrer"]
  end

  def hovercard
  end

  def update
    @test = "test"
    respond_to do |format|
      if @quote.update(quote_params)
        format.html {redirect_to root_path, notice: "Quote was successfully updated." }
        format.turbo_stream
        # @quote.broadcast
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_path, notice: "Quote was successfully destroyed." }
      format.turbo_stream
    end
  end

  private

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:name, :manu, :content)
  end
end
