class MicropsotsController < ApplicationController
  # GET /micropsots
  # GET /micropsots.json
  def index
    @micropsots = Micropsot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micropsots }
    end
  end

  # GET /micropsots/1
  # GET /micropsots/1.json
  def show
    @micropsot = Micropsot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropsot }
    end
  end

  # GET /micropsots/new
  # GET /micropsots/new.json
  def new
    @micropsot = Micropsot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropsot }
    end
  end

  # GET /micropsots/1/edit
  def edit
    @micropsot = Micropsot.find(params[:id])
  end

  # POST /micropsots
  # POST /micropsots.json
  def create
    @micropsot = Micropsot.new(params[:micropsot])

    respond_to do |format|
      if @micropsot.save
        format.html { redirect_to @micropsot, notice: 'Micropsot was successfully created.' }
        format.json { render json: @micropsot, status: :created, location: @micropsot }
      else
        format.html { render action: "new" }
        format.json { render json: @micropsot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micropsots/1
  # PUT /micropsots/1.json
  def update
    @micropsot = Micropsot.find(params[:id])

    respond_to do |format|
      if @micropsot.update_attributes(params[:micropsot])
        format.html { redirect_to @micropsot, notice: 'Micropsot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micropsot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropsots/1
  # DELETE /micropsots/1.json
  def destroy
    @micropsot = Micropsot.find(params[:id])
    @micropsot.destroy

    respond_to do |format|
      format.html { redirect_to micropsots_url }
      format.json { head :no_content }
    end
  end
end
