  class DailyBreadsController < ApplicationController
     before_action :set_daily_bread, only: [:show, :edit, :update, :destroy]
     before_filter :loged_in?, :only => [:new,:create, :edit, :destroy]
      before_filter :set_search

  # GET /DailyBreads
  # GET /DailyBreads.json
  def index  
     if params[:q]
        @search=DailyBread.search(params[:q])
        @daily_breads =  @search.result
    else
          @daily_breads=DailyBread.where(date: Date.today.strftime("%Y-%m-%d"))
    end
  end

  # GET /DailyBreads/1
  # GET /DailyBreads/1.json
  def show
      if params[:q]
        @search=DailyBread.search(params[:q])
        @daily_breads =  @search.result
    else
          @daily_breads=DailyBread.where(date: Date.today.strftime("%Y-%m-%d"))
    end
  end

 

  def set_search
    @search=DailyBread.search(params[:q])
  end


  def new
    @daily_bread = DailyBread.new
  end


  def edit
  end


  # DailyBread /DailyBreads
  # DailyBread /DailyBreads.json
  def create
    @daily_bread = DailyBread.new(daily_bread_params)

    respond_to do |format|
      if @daily_bread.save
        format.html { redirect_to @daily_bread, notice: 'DailyBread was successfully created.' }
        format.json { render :show, status: :created, location: @daily_bread }
      else
        format.html { render :new }
        format.json { render json: @daily_bread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /DailyBreads/1
  # PATCH/PUT /DailyBreads/1.json
  def update
    respond_to do |format|
      if @daily_bread.update(daily_bread_params)
        format.html { redirect_to @daily_bread, notice: 'DailyBread was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_bread }
      else
        format.html { render :edit }
        format.json { render json: @daily_bread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /DailyBreads/1
  # DELETE /DailyBreads/1.json
  def destroy
    @daily_bread.destroy
    respond_to do |format|
      format.html { redirect_to daily_breads_url, notice: 'DailyBread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_bread
      @daily_bread = DailyBread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_bread_params
     params.require(:daily_bread).permit(:message, :date)
    end
    def loged_in?
      redirect_to root_path
    end
end
