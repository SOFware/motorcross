module ApplicationHelper
  def present(object, klass=nil)
    klass ||= "#{object.class}Presenter".constantize
    presenter = klass.new(object, self)
    yield presenter if block_given?
    presenter
  end
  
  def self.fix_caps(str)
    (str == str.upcase) ? str : str.titleize
  end

  def sortable(column, title=nil)
    title ||= column.titleize
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    css_class = column == sort_column ? sort_direction : nil
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    
  end

end
