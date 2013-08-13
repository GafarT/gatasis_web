json.array!(@frontpages) do |frontpage|
  json.extract! frontpage, :carousel_caption1, :carousel_lead1, :carousel_caption2, :carousel_lead2, :carousel_caption3, :carousel_lead3, :marketing_heading1, :marketing_desc1, :marketing_heading2, :marketing_desc2, :marketing_heading3, :marketing_desc3
  json.url frontpage_url(frontpage, format: :json)
end