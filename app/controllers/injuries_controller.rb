class InjuriesController < ApplicationController
    before_action :set_incident
    before_action :set_injury, only: [:show, :edit, :update, :new, :create]
    
    def index
    end
    
    def new
        @injury = @incident.injuries.build
    end
    
    def create
        @injury = @incident.injuries.build(injury_params)
        
        if @injury.save
            redirect_to [@incident, @injury], notice: 'Injury saved.'
        else
            flash.now[:alert] = 'Injury not saved.'
            render :new
        end
    end
    
    def edit
        @injury = Incident.injuries.find(params[:id])
    end
    
    def update
        if @injury.update(injury_params)
            redirect_to incident_injury_path(@incident), notice: 'Injury updated.'
        else
            flash.now[:alert] = 'Injury not saved.'
            render :edit
        end
    end
    
    def show
        @injury = Incident.injuries.find(params[:id])
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