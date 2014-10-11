class MasterViewController < UIViewController
  extend IB

  outlet :title, UILabel
  outlet :text_field, UITextField
  outlet :button, UIButton

  def prepareForSegue(segue, sender: sender)
    if segue.identifier == "SayAThing"
      segue.destinationViewController.say_a_thing(text_field.text)
      text_field.text = ""
    end
  end

  def viewDidLoad
    text_field.becomeFirstResponder
  end
end
