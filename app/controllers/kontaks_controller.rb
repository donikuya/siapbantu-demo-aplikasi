class KontaksController < ApplicationController
  # GET /kontaks
  # GET /kontaks.xml
  def index
    @kontak = Kontak.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kontak }
    end
  end

  # GET /kontaks/1
  # GET /kontaks/1.xml
  def show
    @kontak = Kontak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kontak }
    end
  end

  # GET /kontaks/new
  # GET /kontaks/new.xml
  def new
  @kontaks = Kontak.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kontaks }
    end
    
  end

  # GET /kontaks/1/edit
  def edit
    @kontak = Kontak.find(params[:id])
  end

  # POST /kontaks
  # POST /kontaks.xml
  def create
    @kontak = Kontak.new(params[:kontak])

    respond_to do |format|
      if @kontak.save
        flash[:peringatan] = 'Kontak was successfully created.'
        format.html { redirect_to :action => "index"}
        format.xml  { render :xml => @kontak, :status => :created, :location => @kontak }
      else
        format.html { render :action => "index" }
        format.xml  { render :xml => @kontak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kontaks/1
  # PUT /kontaks/1.xml
  def update
    @kontak = Kontak.find(params[:id])

    respond_to do |format|
      if @kontak.update_attributes(params[:kontak])
        flash[:notice] = 'Kontak was successfully updated.'
        format.html { redirect_to(@kontak) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kontak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kontaks/1
  # DELETE /kontaks/1.xml
  def destroy
    @kontak = Kontak.find(params[:id])
    @kontak.destroy

    respond_to do |format|
      format.html { redirect_to(kontaks_url) }
      format.xml  { head :ok }
    end
  end
end
