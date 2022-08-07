# frozen_string_literal: true

json.data do
  json.array! @users.each do |data|
    json.id data.id
    json.email data.email
    json.first_name data.first_name
    json.last_name data.last_name
    json.date_of_birth data.date_of_birth
  end
end