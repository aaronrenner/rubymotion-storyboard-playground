class SayingViewController < UIViewController
  extend IB

  outlet :saying_label, UILabel

  def say_a_thing(text_to_say)
    @thing_to_say = text_to_say
  end

  def viewDidLoad
    saying_label.text = @thing_to_say
  end
end
