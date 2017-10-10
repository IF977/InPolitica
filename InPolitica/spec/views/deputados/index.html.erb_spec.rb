require 'rails_helper'

RSpec.describe "deputados/index", type: :view do
  before(:each) do
    assign(:deputados, [
      Deputado.create!(
        :nome => "Nome",
        :idade => 2,
        :url_foto => "Url Foto"
      ),
      Deputado.create!(
        :nome => "Nome",
        :idade => 2,
        :url_foto => "Url Foto"
      )
    ])
  end

  it "renders a list of deputados" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Url Foto".to_s, :count => 2
  end
end
