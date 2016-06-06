class IncidentsController < ApplicationController

  def index
    load_incidents
    load_incidents_month
  end

  def new
    build_incident
  end

  def create
    build_incident
    save_incident or render 'new'
  end

  def show
    load_incident
    load_related
  end

  def edit
    load_incident
    build_incident
  end

  def update
    load_incident
    build_incident
    save_incident or render 'edit'
  end

  private
    def load_incidents
      @incidents ||= incident_scope.to_a
    end

    def load_incidents_month
      @incidents_month = @incidents.group_by { |i| i.date_of_incident.beginning_of_month }
    end

    def load_incident
      @incident ||= incident_scope.find(params[:id])
    end

    def load_related
      @injuries ||= @incident.injuries.all
      @corrective_actions ||= @incident.corrective_actions.all
    end

    def build_incident
      @incident ||= incident_scope.build
      @incident.attributes = incident_params
    end

    def save_incident
      if @incident.id == nil && @incident.save
        redirect_to @incident, notice: "Incident successfully created."
      else
        redirect_to @incident, notice: "Incident successfully modified."
      end
    end

    def incident_params
      incident_params = params[:incident]
      incident_params ? incident_params.permit(:first_name, :last_name,
                                             :department,
                                             :job_title,
                                             :date_of_hire,
                                             :supervisor_first_name,
                                             :supervisor_last_name,
                                             :description,
                                             :date_of_incident,
                                             :date_reported,
                                             :location_of_incident,
                                             :type_of_incident,
                                             :suggested_corrective_action) : {}
    end

    def incident_scope
      Incident.all
    end
end

