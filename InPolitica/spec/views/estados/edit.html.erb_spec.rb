require 'rails_helper'

RSpec.describe "estados/edit", type: :view do
  before(:each) do
    @estado = assign(:estado, Estado.create!(
      :nome => "MyString",
      :total_gasto => 1.5
    ))
  end

  it "renders the edit estado form" do
    render

    assert_select "form[action=?][method=?]", estado_path(@estado), "post" do

      assert_select "input#estado_nome[name=?]", "estado[nome]"

      assert_select "input#estado_total_gasto[name=?]", "estado[total_gasto]"
    end
  end
end
