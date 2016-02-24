class InjuriesController < ApplicationController
    before_action :set_incident
    before_action :set_injury, only: [:show, :edit, :update]
    
    def index
        @injuries = @incident.injuries.all
    end
    
    def new
        @injury = @incident.injuries.build
    end
    
    def create
        @injury = @incident.injuries.build(injury_params)
        
        if @injury.save
            redirect_to incident_injuries_path(@incident), notice: 'Injury saved.'
        else
            flash.now[:alert] = 'Injury not saved.'
            render :new
        end
    end
    
    def edit
    end
    
    def update
        if @injury.update(injury_params)
            redirect_to incident_injuries_path(@incident), notice: 'Injury updated.'
        else
            flash.now[:alert] = 'Injury not saved.'
            render :edit
        end
    end
    
    def show
    end
    
    private
        def set_incident
            @incident = Incident.find(params[:incident_id])
        end
        
        def set_injury
            @injury = @incident.injuries.find(params[:id])
        end
        
        def injury_params
            params.require(:injury).permit(:injury_type, :affected_body_part, :treatment)
        end

end