class SalesrepsController < ApplicationController
  # GET /salesreps
  # GET /salesreps.json
  def index
    @salesreps = Salesrep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @salesreps }
    end
  end

  # GET /salesreps/1
  # GET /salesreps/1.json
  def show
    @salesrep = Salesrep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @salesrep }
    end
  end

  # GET /salesreps/new
  # GET /salesreps/new.json
  def new
    @salesrep = Salesrep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @salesrep }
    end
  end

  # GET /salesreps/1/edit
  def edit
    @salesrep = Salesrep.find(params[:id])
  end

  # POST /salesreps
  # POST /salesreps.json
  def create
    @salesrep = Salesrep.new(params[:salesrep])

    respond_to do |format|
      if @salesrep.save
        format.html { redirect_to @salesrep, notice: 'Salesrep was successfully created.' }
        format.json { render json: @salesrep, status: :created, location: @salesrep }
      else
        format.html { render action: "new" }
        format.json { render json: @salesrep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /salesreps/1
  # PUT /salesreps/1.json
  def update
    @salesrep = Salesrep.find(params[:id])

    respond_to do |format|
      if @salesrep.update_attributes(params[:salesrep])
        format.html { redirect_to @salesrep, notice: 'Salesrep was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @salesrep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salesreps/1
  # DELETE /salesreps/1.json
  def destroy
    @salesrep = Salesrep.find(params[:id])
    @salesrep.destroy

    respond_to do |format|
      format.html { redirect_to salesreps_url }
      format.json { head :no_content }
    end
  end
end
