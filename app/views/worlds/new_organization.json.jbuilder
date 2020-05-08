# frozen_string_literal: true

json.organization @organization.content['organization']
json.description @organization.content['description'] if @organization.content['description'].present?
