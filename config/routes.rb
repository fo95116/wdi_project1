CalendaRx::Application.routes.draw do
    # root to: 'Calendars#index'

    root to: 'Calendars#new'

    resources :calendars

 get 'reminders/make_message', to: 'reminders#make_message'

end
