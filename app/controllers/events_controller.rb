class EventsController < ApplicationController
	before_filter :require_logged_in, :except => [:index,:show]
	before_filter :get_event, :except => [:index, :new, :create]
	before_filter :require_ownership, :except => [:index, :show, :new]

	def index
		@today = Event.today(params[:page])
		@tomorrow = Event.tomorrow(params[:page])
		@week = Event.week(params[:page])
	end
	
	def today
		@events = Event.today(params[:page])
	end
	
	def tomorrow
		
	end
	
	def week
		
	end
	
	def show
		
	end
	
	def new
		@event = Event.new
	end
	
	def create
		@event = Event.new(params[:event])
		if @event.save
			flash[:notice] = "You did it!  Congratulations!"
			redirect_to edit_url(@event.id)
		else
			flash[:error] = "There were some problems creating your event.  Please fix the problems below and try again"
			render :template => "new" and return
		end
	end
	
	def edit
		
	end
	
	def update
		
	end
	
	def destroy
		
	end
	
	protected
	
	def get_event
		
	end
	
	def require_ownership
		
	end
	
end
