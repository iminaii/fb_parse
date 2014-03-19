require "fb_parse/version"

module FbParse
  def self.get_id(url)
    if url.include? 'photo'
      self.get_id_photo_video(url)
    else
      self.get_id_status_link_checkin(url)
    end
  end

  def self.get_id_status_link_checkin(url)
    @id = url.split('/')[5].split('?')[0]
    return @id
  end

  def self.get_id_photo_video(url)
    @id = url.split('/')[3].split('=')[1].split('&')[0]
    return @id
  end
end