class EventsController < ApplicationController
	before_filter :require_logged_in, :except => [:index,:show]
	before_filter :get_event, :except => [:index, :new]
	before_filter :require_ownership, :except => [:index, :show, :new]

	def index
		
	end
	
	def show
		
	end
	
	def new
		
	end
	
	def create
		
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
