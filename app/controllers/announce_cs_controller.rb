class AnnounceCsController < ApplicationController
  # GET /announce_cs
  # GET /announce_cs.json
  def index
    @announce_cs = AnnounceC.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @announce_cs }
    end
  end

  # GET /announce_cs/1
  # GET /announce_cs/1.json
  def show
    @announce_c = AnnounceC.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @announce_c }
    end
  end

  # GET /announce_cs/new
  # GET /announce_cs/new.json
  def new
    @announce_c = AnnounceC.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @announce_c }
    end
  end

  # GET /announce_cs/1/edit
  def edit
    @announce_c = AnnounceC.find(params[:id])
  end

  # POST /announce_cs
  # POST /announce_cs.json
  def create
    @announce_c = AnnounceC.new(params[:announce_c])

    respond_to do |format|
      if @announce_c.save
        format.html { redirect_to @announce_c, notice: 'Announce c was successfully created.' }
        format.json { render json: @announce_c, status: :created, location: @announce_c }
      else
        format.html { render action: "new" }
        format.json { render json: @announce_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /announce_cs/1
  # PUT /announce_cs/1.json
  def update
    @announce_c = AnnounceC.find(params[:id])

    respond_to do |format|
      if @announce_c.update_attributes(params[:announce_c])
        format.html { redirect_to @announce_c, notice: 'Announce c was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @announce_c.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announce_cs/1
  # DELETE /announce_cs/1.json
  def destroy
    @announce_c = AnnounceC.find(params[:id])
    @announce_c.destroy

    respond_to do |format|
      format.html { redirect_to announce_cs_url }
      format.json { head :no_content }
    end
  end
end
