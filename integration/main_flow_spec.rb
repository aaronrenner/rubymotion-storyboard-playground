require_relative "spec_helper"

describe "Main flow" do
  after do
    reset
  end

  it "says hello world on the second screen" do
    text_field = find_element :accessibility_id, "What to Say"
    text_field.send_keys("Hello World")

    touch_action = Appium::TouchAction.new
    element  = find_element :name, 'Say It!'
    touch_action.tap(element: element, x: 10, y: 10).perform

    saying_label = find_element :accessibility_id, 'saying-label'
    expect(saying_label.value).to eq("Hello World")
  end


  it "says hello world on the second screen" do
    text_field = find_element :accessibility_id, "What to Say"
    text_field.send_keys("Goodbye")

    touch_action = Appium::TouchAction.new
    element  = find_element :name, 'Say It!'
    touch_action.tap(element: element, x: 10, y: 10).perform

    saying_label = find_element :accessibility_id, 'saying-label'
    expect(saying_label.value).to eq("Goodbye")
  end
end
