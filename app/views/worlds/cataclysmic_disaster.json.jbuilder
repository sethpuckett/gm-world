# frozen_string_literal: true

json.disaster @disaster.content['disaster']
json.description @disaster.content['description'] if @disaster.content['description'].present?
