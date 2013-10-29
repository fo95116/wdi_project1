CalendaRx::Application.routes.draw do
    # root to: 'Calendars#index'

    root to: 'Calendars#new'

    resources :calendars

    get 'reminders/new', to: 'reminders#new'

    # get '/make_message', to: 'reminders#make_message'

    post '/create', to: 'reminders#make_message'



    # get '/new', to: 'reminders#new'

end
