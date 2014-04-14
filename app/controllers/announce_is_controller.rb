class AnnounceIsController < ApplicationController
  # GET /announce_is
  # GET /announce_is.json
  def index
    @announce_is = AnnounceI.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @announce_is }
    end
  end

  # GET /announce_is/1
  # GET /announce_is/1.json
  def show
    @announce_i = AnnounceI.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @announce_i }
    end
  end

  # GET /announce_is/new
  # GET /announce_is/new.json
  def new
    @announce_i = AnnounceI.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @announce_i }
    end
  end

  # GET /announce_is/1/edit
  def edit
    @announce_i = AnnounceI.find(params[:id])
  end

  # POST /announce_is
  # POST /announce_is.json
  def create
    @announce_i = AnnounceI.new(params[:announce_i])

    respond_to do |format|
      if @announce_i.save
        format.html { redirect_to @announce_i, notice: 'Announce i was successfully created.' }
        format.json { render json: @announce_i, status: :created, location: @announce_i }
      else
        format.html { render action: "new" }
        format.json { render json: @announce_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /announce_is/1
  # PUT /announce_is/1.json
  def update
    @announce_i = AnnounceI.find(params[:id])

    respond_to do |format|
      if @announce_i.update_attributes(params[:announce_i])
        format.html { redirect_to @announce_i, notice: 'Announce i was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @announce_i.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announce_is/1
  # DELETE /announce_is/1.json
  def destroy
    @announce_i = AnnounceI.find(params[:id])
    @announce_i.destroy

    respond_to do |format|
      format.html { redirect_to announce_is_url }
      format.json { head :no_content }
    end
  end
end
