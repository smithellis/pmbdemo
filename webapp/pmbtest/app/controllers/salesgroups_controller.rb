class SalesgroupsController < ApplicationController
  # GET /salesgroups
  # GET /salesgroups.json
  def index
    @salesgroups = Salesgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @salesgroups }
    end
  end

  # GET /salesgroups/1
  # GET /salesgroups/1.json
  def show
    @salesgroup = Salesgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @salesgroup }
    end
  end

  # GET /salesgroups/new
  # GET /salesgroups/new.json
  def new
    @salesgroup = Salesgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @salesgroup }
    end
  end

  # GET /salesgroups/1/edit
  def edit
    @salesgroup = Salesgroup.find(params[:id])
  end

  # POST /salesgroups
  # POST /salesgroups.json
  def create
    @salesgroup = Salesgroup.new(params[:salesgroup])

    respond_to do |format|
      if @salesgroup.save
        format.html { redirect_to @salesgroup, notice: 'Salesgroup was successfully created.' }
        format.json { render json: @salesgroup, status: :created, location: @salesgroup }
      else
        format.html { render action: "new" }
        format.json { render json: @salesgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /salesgroups/1
  # PUT /salesgroups/1.json
  def update
    @salesgroup = Salesgroup.find(params[:id])

    respond_to do |format|
      if @salesgroup.update_attributes(params[:salesgroup])
        format.html { redirect_to @salesgroup, notice: 'Salesgroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @salesgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salesgroups/1
  # DELETE /salesgroups/1.json
  def destroy
    @salesgroup = Salesgroup.find(params[:id])
    @salesgroup.destroy

    respond_to do |format|
      format.html { redirect_to salesgroups_url }
      format.json { head :no_content }
    end
  end
end
