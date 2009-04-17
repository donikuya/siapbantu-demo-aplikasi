class FeedbackController < ApplicationController
	def index #halaman depan www.siapbantu.com/feedback
		@feedbacks = Feedback.find(:all)
	end
	
	def new
		@feedback = Feedback.new
	end
	
	def create
		@feedback = Feedback.new(params[:feedback])
		if @feedback.save
		redirect_to :action => 'index'
		
		flash[:peringatan] = "Terima kasih atas saran anda"
		else
		flash[:peringatan] = "Field harus terisi semua"
		render :action =>'new'
		
		end
	end
	
	def show
		@feedback = Feedback.find(params[:id])
	end
		
		
	def delete
		Feedback.find(params[:id]).destroy
		redirect_to :action => 'index'
	end
end
