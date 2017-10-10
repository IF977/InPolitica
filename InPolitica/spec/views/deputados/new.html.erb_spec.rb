require 'rails_helper'

RSpec.describe "deputados/new", type: :view do
  before(:each) do
    assign(:deputado, Deputado.new(
      :nome => "MyString",
      :idade => 1,
      :url_foto => "MyString"
    ))
  end

  it "renders new deputado form" do
    render

    assert_select "form[action=?][method=?]", deputados_path, "post" do

      assert_select "input#deputado_nome[name=?]", "deputado[nome]"

      assert_select "input#deputado_idade[name=?]", "deputado[idade]"

      assert_select "input#deputado_url_foto[name=?]", "deputado[url_foto]"
    end
  end
end
