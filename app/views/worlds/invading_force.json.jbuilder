# frozen_string_literal: true

json.force @force.content['force']
json.description @force.content['description'] if @force.content['description'].present?
