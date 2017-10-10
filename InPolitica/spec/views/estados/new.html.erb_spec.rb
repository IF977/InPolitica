require 'rails_helper'

RSpec.describe "estados/new", type: :view do
  before(:each) do
    assign(:estado, Estado.new(
      :nome => "MyString",
      :total_gasto => 1.5
    ))
  end

  it "renders new estado form" do
    render

    assert_select "form[action=?][method=?]", estados_path, "post" do

      assert_select "input#estado_nome[name=?]", "estado[nome]"

      assert_select "input#estado_total_gasto[name=?]", "estado[total_gasto]"
    end
  end
end
