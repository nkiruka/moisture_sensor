module SensorsHelper
  def disable_previous(page)
    if page.to_i <= 1 || nil
      "disabled"
    end
  end

  def previous_link_valid?(page)
    unless page.to_i == 1
      true
    end
  end

  def next_link_valid?(current_page, total_page)
    unless current_page == total_page.to_s
      true
    end
  end

  def disable_next(current_page, total_page)
    "disabled" if current_page == total_page.to_s
  end
end
