# frozen_string_literal: true

json.government @government.content['government']
json.description @government.content['description'] if @government.content['description'].present?
