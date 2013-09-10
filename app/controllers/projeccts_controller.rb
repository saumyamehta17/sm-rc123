class ProjecctsController < ApplicationController
  # GET /projeccts
  # GET /projeccts.json
  def index
    @projeccts = Projecct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projeccts }
    end
  end

  # GET /projeccts/1
  # GET /projeccts/1.json
  def show
    @projecct = Projecct.find_by_subdomain(request.subdomain)
    @tasks = @projecct.tasks
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @projecct }
    end
  end

  # GET /projeccts/new
  # GET /projeccts/new.json
  def new
    @projecct = Projecct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @projecct }
    end
  end

  # GET /projeccts/1/edit
  def edit
    @projecct = Projecct.find(params[:id])
  end

  # POST /projeccts
  # POST /projeccts.json
  def create
    @projecct = Projecct.new(params[:projecct])

    respond_to do |format|
      if @projecct.save
        format.html { redirect_to @projecct, notice: 'Projecct was successfully created.' }
        format.json { render json: @projecct, status: :created, location: @projecct }
      else
        format.html { render action: "new" }
        format.json { render json: @projecct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projeccts/1
  # PUT /projeccts/1.json
  def update
    @projecct = Projecct.find(params[:id])

    respond_to do |format|
      if @projecct.update_attributes(params[:projecct])
        format.html { redirect_to @projecct, notice: 'Projecct was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @projecct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projeccts/1
  # DELETE /projeccts/1.json
  def destroy
    @projecct = Projecct.find(params[:id])
    @projecct.destroy

    respond_to do |format|
      format.html { redirect_to projeccts_url }
      format.json { head :no_content }
    end
  end
end
