class KomentarsController < ApplicationController
		before_filter(:get_post)
			def create
			
			
			@komentar = @info.komentars.new(params[:komentar])
				if @komentar.save
					flash[:peringatan] = 'Komentar berhasil dibuat.'
					respond_to do |format|
						format.html { redirect_to info_url(@info) }
						format.xml { render :xml => @komentar,
						:status => :created, :location => @info }
					end
				else
					flash[:peringatan] = 'Ada field yang belum terisi'
					respond_to do |format|
						format.html { redirect_to info_url(@info) }
						format.xml { render :xml => @komentar.errors,
						:status => :unprocessable_entity }
					end
				
				end
			end
			
		private
		

			def get_post
				@info = Info.find(params[:info_id])
			end
end
