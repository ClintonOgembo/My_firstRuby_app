require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  let(:patient) {
    Patient.create!(
      fname: "MyString",
      lname: "MyString",
      age: 1,
      diagnosis: "MyString"
    )
  }

  before(:each) do
    assign(:patient, patient)
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(patient), "post" do

      assert_select "input[name=?]", "patient[fname]"

      assert_select "input[name=?]", "patient[lname]"

      assert_select "input[name=?]", "patient[age]"

      assert_select "input[name=?]", "patient[diagnosis]"
    end
  end
end
