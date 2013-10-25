class CalendarsController < ApplicationController

  # require 'twilio-ruby'
  # require 'iron_worker_ng'
  # require 'whenever'

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
          redirect_to update_form #'/forms/#{update_form.id}'

    end

    def destroy
          # calendar.find(params[:id]).destroy
          Calendar.delete(params[:id])
          redirect_to calendars_path

    end

    # def make_message
    # number = Calendar.find(params[:number])

    # #Get your Account Sid and Auth Token from twilio.com/user/account
    # account_sid = 'AC8966f22ed875b133bc29031239a19d48'
    # auth_token = '268b5410875cbf5edd5b1b4c17982c2d'
    # @client = Twilio::REST::Client.new account_sid, auth_token
    # #the @client initializes a helper library that will be able to receive and send messages
    # #the @client will communicate with twilio's REST API (talks to the twilio server to send messages)

    # message = @client.account.sms.messages.create(:body => "configure the twilio api. Adapt to the Calendar in an organized manner. Schedule?",

    #     :to => "+1#{number}",
    #     :from => "+14085123430")

    # puts message.to
    # end





end
