module ApplicationHelper
  def asset_exists?(path)
    if Rails.env.production?
      Rails.application.assets_manifest.find_sources(path).any?
    else
      Rails.application.assets.find_asset(path) != nil
    end
  end

  def url_valid?(url)
    url = URI.parse(url) rescue false
    url.kind_of?(URI::HTTP) || url.kind_of?(URI::HTTPS)
  end
end
