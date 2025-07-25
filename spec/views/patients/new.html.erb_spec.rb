require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
      fname: "MyString",
      lname: "MyString",
      age: 1,
      diagnosis: "MyString"
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do
      assert_select "input[name=?]", "patient[fname]"

      assert_select "input[name=?]", "patient[lname]"

      assert_select "input[name=?]", "patient[age]"

      assert_select "input[name=?]", "patient[diagnosis]"
    end
  end
end
