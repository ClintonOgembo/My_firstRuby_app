require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    assign(:patient, Patient.create!(
      fname: "Fname",
      lname: "Lname",
      age: 2,
      diagnosis: "Diagnosis"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fname/)
    expect(rendered).to match(/Lname/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Diagnosis/)
  end
end
