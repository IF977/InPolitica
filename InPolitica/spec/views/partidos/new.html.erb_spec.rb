require 'rails_helper'

RSpec.describe "partidos/new", type: :view do
  before(:each) do
    assign(:partido, Partido.new(
      :nome => "MyString",
      :total_gasto => 1.5
    ))
  end

  it "renders new partido form" do
    render

    assert_select "form[action=?][method=?]", partidos_path, "post" do

      assert_select "input#partido_nome[name=?]", "partido[nome]"

      assert_select "input#partido_total_gasto[name=?]", "partido[total_gasto]"
    end
  end
end
