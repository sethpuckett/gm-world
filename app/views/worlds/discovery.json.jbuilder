# frozen_string_literal: true

json.discovery @discovery.content['discovery']
json.description @discovery.content['description'] if @discovery.content['description'].present?
