json.array!(@cmps) do |cmp|
  json.extract! cmp, 
  json.url cmp_url(cmp, format: :json)
end
