json.extract! note, :id, :name, :description, :quantity, :due_date, :created_at, :updated_at
json.url note_url(note, format: :json)
