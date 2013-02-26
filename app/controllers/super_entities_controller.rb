class SuperEntitiesController < ApplicationController
  # GET /super_entities
  # GET /super_entities.json
  def index
    @super_entities = SuperEntity.all

    respond_to do |format|
      #format.html # index.html.erb
      format.json { render json: @super_entities }
    end
  end

  # GET /super_entities/1
  # GET /super_entities/1.json
  def show
    @super_entity = SuperEntity.find(params[:id])

    respond_to do |format|
      #format.html # show.html.erb
      format.json { render json: @super_entity }
    end
  end

  # GET /super_entities/new
  # GET /super_entities/new.json
  def new
    @super_entity = SuperEntity.new

    respond_to do |format|
      #format.html # new.html.erb
      format.json { render json: @super_entity }
    end
  end

  # GET /super_entities/1/edit
  def edit
    @super_entity = SuperEntity.find(params[:id])
  end

  # POST /super_entities
  # POST /super_entities.json
  def create
    @super_entity = SuperEntity.new(params[:super_entity])

    respond_to do |format|
      if @super_entity.save
        #format.html { redirect_to @super_entity, notice: 'Super entity was successfully created.' }
        format.json { render json: @super_entity, status: :created, location: @super_entity }
      else
        #format.html { render action: "new" }
        format.json { render json: @super_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /super_entities/1
  # PUT /super_entities/1.json
  def update
    @super_entity = SuperEntity.find(params[:id])

    respond_to do |format|
      if @super_entity.update_attributes(params[:super_entity])
        #format.html { redirect_to @super_entity, notice: 'Super entity was successfully updated.' }
        format.json { head :no_content }
      else
        #format.html { render action: "edit" }
        format.json { render json: @super_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_entities/1
  # DELETE /super_entities/1.json
  def destroy
    @super_entity = SuperEntity.find(params[:id])
    @super_entity.destroy

    respond_to do |format|
      #format.html { redirect_to super_entities_url }
      format.json { head :no_content }
    end
  end
end
