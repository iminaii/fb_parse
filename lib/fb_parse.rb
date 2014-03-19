require "fb_parse/version"

module FbParse
  def self.get_id_status(url)
    @id = url.split('/')[5].split('?')[0]
    return @id
  end

  def self.get_id_photo(url)
    @id = url.split('/')[3].split('=')[1].split('&')[0]
    return @id
  end

  def self.get_id_video(url)
    @id = url.split('/')[3].split('=')[1].split('&')[0]
    return @id
  end

  def self.get_id_link(url)
    @id = url.split('/')[5].split('?')[0]
    return @id
  end

  def self.get_id_checkin(url)
    @id = url.split('/')[5].split('?')[0]
    return @id
  end
end
