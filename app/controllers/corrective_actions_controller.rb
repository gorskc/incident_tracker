class CorrectiveActionsController < ApplicationController
    before_action :set_incident
    before_action :set_corrective_action, only: [:show, :edit, :update]
    
    def index
        @corrective_actions = @incident.corrective_actions.all
    end
    
    def new
        @corrective_action = @incident.corrective_actions.build
    end
    
    def create
        @corrective_action = @incident.corrective_actions.build(corrective_action_params)
        
        if @corrective_action.save
            redirect_to incident_corrective_actions_path(@incident), notice: 'Corrective action saved.'
        else
            flash.now[:alert] = 'Corrective action not saved.'
            render :new
        end
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        if @corrective_action.update(corrective_action_params)
            redirect_to incident_corrective_actions_path(@incident), notice: 'Corrective action updated'
        else
            render :edit
        end
    end
    
    private
        def set_incident
            @incident = Incident.find(params[:incident_id])
        end
        
        def set_corrective_action
            @corrective_action = @incident.corrective_actions.find(params[:id])
        end
        
        def corrective_action_params
            params.require(:corrective_action).permit(:action, :expected_completion_date, :actual_completion_date, :complete)
        end
end