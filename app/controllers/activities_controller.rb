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
        redirect_to activities_path
    end

    def edit
        @activity = Activity.find params[:id]
    end

    def update
        activity = Activity.find params[:id]
        activity.update activity_params
        redirect_to activities_path
    
    end
      

    def destroy
      activity = Activity.find params[:id]
      activity.destroy
      redirect_to root_path
    end
    
    private
      def activity_params
        params.require(:activity).permit(:name, :user_id, :theme, :mood_ids => [] )
      end
  
  end
  