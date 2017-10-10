require 'rails_helper'

RSpec.describe "partidos/edit", type: :view do
  before(:each) do
    @partido = assign(:partido, Partido.create!(
      :nome => "MyString",
      :total_gasto => 1.5
    ))
  end

  it "renders the edit partido form" do
    render

    assert_select "form[action=?][method=?]", partido_path(@partido), "post" do

      assert_select "input#partido_nome[name=?]", "partido[nome]"

      assert_select "input#partido_total_gasto[name=?]", "partido[total_gasto]"
    end
  end
end
