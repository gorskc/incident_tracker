json.incidents @incidents do |incident|
  json.first_name incident.first_name
  json.last_name incident.last_name
  json.department incident.last_name
  json.job_title incident.job_title
  json.date_of_hire incident.date_of_hire
  json.description incident.description
  json.date_of_incident incident.date_of_incident
  json.date_reported incident.date_reported
  json.location_of_incident incident.location_of_incident
  json.type_of_incident incident.type_of_incident
  json.supervisor_last_name incident.supervisor_last_name
  json.supervisor_first_name incident.supervisor_first_name
  json.suggested_corrective_action incident.suggested_corrective_action
end
