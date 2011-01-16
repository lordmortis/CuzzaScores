class NicknamesController < ApplicationController
  # GET /nicknames
  # GET /nicknames.xml
  def index
    @nicknames = Nickname.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nicknames }
    end
  end

  # GET /nicknames/1
  # GET /nicknames/1.xml
  def show
    @nickname = Nickname.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nickname }
    end
  end

  # GET /nicknames/new
  # GET /nicknames/new.xml
  def new
    @nickname = Nickname.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nickname }
    end
  end

  # GET /nicknames/1/edit
  def edit
    @nickname = Nickname.find(params[:id])
  end

  # POST /nicknames
  # POST /nicknames.xml
  def create
    @nickname = Nickname.new(params[:nickname])

    respond_to do |format|
      if @nickname.save
        format.html { redirect_to(@nickname, :notice => 'Nickname was successfully created.') }
        format.xml  { render :xml => @nickname, :status => :created, :location => @nickname }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nickname.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nicknames/1
  # PUT /nicknames/1.xml
  def update
    @nickname = Nickname.find(params[:id])

    respond_to do |format|
      if @nickname.update_attributes(params[:nickname])
        format.html { redirect_to(@nickname, :notice => 'Nickname was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nickname.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nicknames/1
  # DELETE /nicknames/1.xml
  def destroy
    @nickname = Nickname.find(params[:id])
    @nickname.destroy

    respond_to do |format|
      format.html { redirect_to(nicknames_url) }
      format.xml  { head :ok }
    end
  end
end
