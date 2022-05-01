class BlindDatesController < ApplicationController
  include BlindDatesHelper
  before_action :set_blind_date, only: %i[show]

  # GET /blind_dates
  def index
    @blind_dates = BlindDate.all
  end

  # GET /blind_dates/:id
  def show; end

  # GET /blind_dates/new
  def new
    @blind_date = BlindDate.new
  end

  # POST /blind_dates
  def create
    create_groups

    respond_to do |format|
      if @blind_date.save
        format.html { redirect_to blind_dates_path, notice: 'Blind date was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_blind_date
    @blind_date = BlindDate.find(params[:id])
  end
end
