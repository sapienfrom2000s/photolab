class CardsController < ApplicationController
  before_action :set_card, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: %i[show]

  # GET /cards or /cards.json
  def index
    @cards = Card.all
  end

  # GET /cards/1 or /cards/1.json
  def show
  end

  # GET /cards/new
  def new
    @card = Card.new
  end

  # GET /cards/1/edit
  def edit
  end

  # POST /cards or /cards.json
  def create
    @card = Card.create params.require(:card).permit(:content, :title)
    redirect_to @card
  end

  # PATCH/PUT /cards/1 or /cards/1.json
  def update
    @card.update params.require(:card).permit(:content, :title)
    redirect_to @card
  end

  # DELETE /cards/1 or /cards/1.json
  def destroy
    @card.destroy!

    respond_to do |format|
      format.html { redirect_to cards_url, notice: "Card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def card_params
      params.fetch(:card, {})
    end
end
