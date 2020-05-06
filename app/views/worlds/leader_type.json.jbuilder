# frozen_string_literal: true

json.leader_type @leader.content['leader_type']
json.description @leader.content['description'] if @leader.content['description'].present?
