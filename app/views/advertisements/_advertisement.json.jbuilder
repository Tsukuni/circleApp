json.extract! advertisement, :id, :adver_image, :url, :created_at, :updated_at
json.url advertisement_url(advertisement, format: :json)
