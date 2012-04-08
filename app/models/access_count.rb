class AccessCount < Admin::AccessCount

  def self.blog_all_counter
    @all_count = 0
    accesses = self.find_all_by_menu_id(2)
    accesses.each do |access|
      @all_count += access.cnt
    end
    @all_count
  end

  def self.blog_today_counter
    today_accesses = self.find_by_menu_id_and_access_at(2, Date.today)
    today_accesses.blank? ? 0 : today_accesses.cnt
  end

  def self.blog_yesterday_counter
    yesterday_accesses = self.find_by_menu_id_and_access_at(2, Date.today - 1)
    yesterday_accesses.blank? ? 0 : yesterday_accesses.cnt
  end
end
