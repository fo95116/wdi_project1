CalendaRx::Application.routes.draw do
    # root to: 'Calendars#index'

    root to: 'Calendars#new'

    resources :calendars

end
