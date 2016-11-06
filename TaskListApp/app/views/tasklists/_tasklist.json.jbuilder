json.extract! tasklist, :id, :name, :created_at, :updated_at
json.url tasklist_url(tasklist, format: :json)