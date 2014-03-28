require "fb_parse/version"

module FbParse
  def self.get_id_embed(code)
    url = URI.extract(code)[0]
    if url.include? '?fbid='
      self.get_id_photo_video(url)
    elsif url.include? 'activity'
      self.get_id_feed(url)
    elsif url.include? 'photos'
      self.get_id_photo_other(url)
    else
      self.get_id_status_link_checkin(url)
    end
  end

  def self.get_id_url(url)
    if url.include? 'photo'
      self.get_id_photo_video(url)
    elsif url.include? 'activity'
      self.get_id_feed
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

  def self.get_id_feed(url)
    @id = url.split('/').last.split('?').first
    return @id
  end

  def self.get_id_photo_other(url)
    @id = url.split('/')[6]
    return @id
  end
end