# frozen_string_literal: true

json.event @event.content['event']
json.description @event.content['description'] if @event.content['description'].present?
