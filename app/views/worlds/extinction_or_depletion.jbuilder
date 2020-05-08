# frozen_string_literal: true

json.lost_resource @lost_resource.content['lost_resource']
json.description @lost_resource.content['description'] if @lost_resource.content['description'].present?
