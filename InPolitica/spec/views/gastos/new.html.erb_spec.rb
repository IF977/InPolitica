require 'rails_helper'

RSpec.describe "gastos/new", type: :view do
  before(:each) do
    assign(:gasto, Gasto.new(
      :titulo => "MyString",
      :informacao => "MyText",
      :valor => 1.5,
      :deputado => nil
    ))
  end

  it "renders new gasto form" do
    render

    assert_select "form[action=?][method=?]", gastos_path, "post" do

      assert_select "input#gasto_titulo[name=?]", "gasto[titulo]"

      assert_select "textarea#gasto_informacao[name=?]", "gasto[informacao]"

      assert_select "input#gasto_valor[name=?]", "gasto[valor]"

      assert_select "input#gasto_deputado_id[name=?]", "gasto[deputado_id]"
    end
  end
end
