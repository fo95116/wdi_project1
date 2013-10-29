class CalendarsController < ApplicationController

    def index
        @calendar= Calendar.all
        # @instance = @calendar.find(params[:day])
        @monday = Calendar.where(:day => "monday")
        @tuesday = Calendar.where(:day => "tuesday")
        @wednesday = Calendar.where(:day => "wednesday")
        @thursday = Calendar.where(:day => "thursday")
        @friday = Calendar.where(:day => "friday")
        @saturday = Calendar.where(:day => "saturday")
        @sunday = Calendar.where(:day => "sunday")
    end

    def new
        @calendar= Calendar.new
    end

    def create
        new_calendar = Calendar.create(params[:calendar])
        redirect_to calendars_path(new_calendar.id)
    end

    def show
        @calendar = Calendar.find(params[:id])
    end

    def edit
         @calendar = Calendar.find(params[:id])
    end

    def update
          update_calendar = Calendar.find(params[:id])
          update_calendar.update_attributes(params[:calendar])
          redirect_to update_form
          #'/forms/#{update_form.id}'
    end

    def destroy
          # calendar.find(params[:id]).destroy
          Calendar.delete(params[:id])
          redirect_to calendars_path
    end

end
