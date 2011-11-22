class OutingsController < ApplicationController
  # GET /outings
  # GET /outings.json
  def index
    @outings = Outing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outings }
    end
  end

  # GET /outings/1
  # GET /outings/1.json
  def show
    @outing = Outing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outing }
    end
  end

  # GET /outings/new
  # GET /outings/new.json
  def new
    @outing = Outing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outing }
    end
  end

  # GET /outings/1/edit
  def edit
    @outing = Outing.find(params[:id])
  end

  # POST /outings
  # POST /outings.json
  def create
    @outing = Outing.new(params[:outing])

    respond_to do |format|
      if @outing.save
        format.html { redirect_to @outing, notice: 'Outing was successfully created.' }
        format.json { render json: @outing, status: :created, location: @outing }
      else
        format.html { render action: "new" }
        format.json { render json: @outing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outings/1
  # PUT /outings/1.json
  def update
    @outing = Outing.find(params[:id])

    respond_to do |format|
      if @outing.update_attributes(params[:outing])
        format.html { redirect_to @outing, notice: 'Outing was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @outing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outings/1
  # DELETE /outings/1.json
  def destroy
    @outing = Outing.find(params[:id])
    @outing.destroy

    respond_to do |format|
      format.html { redirect_to outings_url }
      format.json { head :ok }
    end
  end
end
