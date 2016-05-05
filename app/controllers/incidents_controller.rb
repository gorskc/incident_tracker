class IncidentsController < ApplicationController
    before_action :set_incident, only: [:show, :update, :edit]
    
    def index
        @incidents = Incident.all 
        @incidents_month = @incidents.group_by { |i| i.date_of_incident.beginning_of_month }
    end
    
    def new
        @incident = Incident.new
    end
    
    def create
        @incident = Incident.new(incident_params)
        if @incident.save
            redirect_to @incident, notice: 'Incident successfully created.'
        else
            flash.now[:error] = 'Error: Incident was not saved.'
            render :new
        end
    end
    
    def show
        @incident = Incident.find(params[:id])
        @injuries = @incident.injuries.all
        @corrective_actions = @incident.corrective_actions.all
    end
    
    def edit
    end
    
    def update
        if @incident.update(incident_params)
            redirect_to @incident, notice: 'Incident successfully updated'
        else
            render :edit
        end
    end
    
    
    private
        def incident_params
            params.require(:incident).permit(:first_name, :last_name, :department, :job_title, :date_of_hire, :description, :date_of_incident, :date_reported, :location_of_incident, :type_of_incident, :property_damage, :supervisor_last_name, :supervisor_first_name, :suggested_corrective_action)
        end
        
        def set_incident
            @incident = Incident.find(params[:id])
        end
end