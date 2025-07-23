require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        fname: "Fname",
        lname: "Lname",
        age: 2,
        diagnosis: "Diagnosis"
      ),
      Patient.create!(
        fname: "Fname",
        lname: "Lname",
        age: 2,
        diagnosis: "Diagnosis"
      )
    ])
  end

  it "renders a list of patients" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Fname".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Lname".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Diagnosis".to_s), count: 2
  end
end
