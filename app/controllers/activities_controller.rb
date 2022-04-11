class ActivitiesController < ApplicationController

    def index
        @activities = Activity.all 
    end
    def new
      @activities = Activity.new
    end
   
      private
      def activity_params
        params.require(:activity).permit(:name, :theme)
      end
  end
  