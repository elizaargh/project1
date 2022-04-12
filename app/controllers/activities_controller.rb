class ActivitiesController < ApplicationController
  before_action :check_for_login
    # def index
    #     @activity = Activity.all 
    # end
    def index
      @activities = Activity.all

    end
    def new
      @activity = Activity.new
    end
        # @connect = Activity.new(moon_id)

    def create
        activity = Activity.create activity_params
        @current_user.activities << activity
        redirect_to root_path 
    end
    
    private
      def activity_params
        params.require(:activity).permit(:name, :theme, :mood_ids => [] )
      end
  
  end
  