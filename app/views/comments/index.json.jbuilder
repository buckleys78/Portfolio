json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :content, :approved, :post_id
  json.url comment_url(comment, format: :json)
end
