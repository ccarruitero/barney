class RegularFormBuilder < ActionView::Helpers::FormBuilder
  delegate :content_tag, :tag, to: :@template

  # iterate over typical html controls
  %w(text_field number_field text_area password_field file_field collection_select check_box date_select).each do |method_name|
    # define as method so you can call it like form do |f| f.html_control args end
    define_method(method_name) do |name, *args|
      # wrap all controls with div.field
      content_tag(:div, class: 'field') { field_label(name, *args) + super(name, *args) }
    end
  end

  def submit *args
    # wrap with div.action (instead of field)
    content_tag(:div, class: 'action') { super }
  end

  private

  def field_label name, *args
    # this is the same as args.last.is_a?(::Hash) ? pop : {}
    options = args.extract_options!
    # set required flag if object has a presence validator
    required = object.class.validators_on(name).any? { |v| v.kind_of? ActiveModel::Validations::PresenceValidator }
    # set the initial label text
    label_text = options[:label]
    # add the first error message is it exists
    label_text += " - #{object.errors[name].first}" if object.errors[name].any?
    # add the 'required' class if the required flag is true
    label name, label_text, class: ('required' if required)
  end

  # prevent adding the lable option to fields
  def objectify_options options
    super.except :label
  end
end
