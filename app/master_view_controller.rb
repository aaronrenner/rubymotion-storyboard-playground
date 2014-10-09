class MasterViewController < UIViewController
  extend IB

  outlet :title, UILabel
  outlet :text_field, UITextField
  outlet :button, UIButton

  def button_pressed(sender)
    title.text = text_field.text
    text_field.text = ""
  end
end
