require 'rails_helper'

RSpec.describe "deputados/show", type: :view do
  before(:each) do
    @deputado = assign(:deputado, Deputado.create!(
      :nome => "Nome",
      :idade => 2,
      :url_foto => "Url Foto"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Url Foto/)
  end
end
