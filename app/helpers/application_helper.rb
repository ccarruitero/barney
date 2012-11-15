module ApplicationHelper
  def regular_form_for object, options = {}, &block
    options[:builder] = RegularFormBuilder
    form_for object, options, &block
  end
end
