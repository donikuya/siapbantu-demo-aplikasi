class InfoController < ApplicationController

	def index #halaman depan www.siapbantu.com/info
		@infos = Info.find(:all)
	end
	
	def new
		@info = Info.new
	end
	
	def create
		@info = Info.new(params[:info])
		if @info.save
		redirect_to :action => 'index'
		
		flash[:peringatan] = "Informasi berhasil ditambah"
		else
		flash[:peringatan] = "Field harus terisi semua"
		render :action =>'new'
		
		end
	end
	
	def show
		@info = Info.find(params[:id])
	end
		
	def edit
		@info = Info.find(params[:id])
		
	end
	
	def update
		@info = Info.find(params[:id])
		if @info.update_attributes(params[:info])
			redirect_to :action => 'show', :id => @info
		else
			render :action => 'edit'
		end
	end
	
	def delete
		Info.find(params[:id]).destroy
		redirect_to :action => 'index'
	end
	
end
