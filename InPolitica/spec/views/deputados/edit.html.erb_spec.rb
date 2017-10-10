require 'rails_helper'

RSpec.describe "deputados/edit", type: :view do
  before(:each) do
    @deputado = assign(:deputado, Deputado.create!(
      :nome => "MyString",
      :idade => 1,
      :url_foto => "MyString"
    ))
  end

  it "renders the edit deputado form" do
    render

    assert_select "form[action=?][method=?]", deputado_path(@deputado), "post" do

      assert_select "input#deputado_nome[name=?]", "deputado[nome]"

      assert_select "input#deputado_idade[name=?]", "deputado[idade]"

      assert_select "input#deputado_url_foto[name=?]", "deputado[url_foto]"
    end
  end
end
