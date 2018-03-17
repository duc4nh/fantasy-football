require 'rails_helper'

RSpec.describe TeamsController, type: :controller do
  it "renders the index template" do
    get :index
    expect(response).to render_template("index")
    expect(response).to have_http_status(200)
  end

  it "renders the new template" do
    get :new
    expect(response).to render_template("new")
    expect(response).to have_http_status(200)
  end

  let (:player) { create(:player) }
  it "creates new record" do
    params = {
      player_id: [player.id],
      team: {
        name: 'name'
      }
    }
    post :create, params: params
    expect(response).to redirect_to :action => :index
    expect(response).to have_http_status(302)
  end

  it "does not create new record" do
    params = {
      player_id: ['',''],
      team: {
        name: 'name'
      }
    }
    post :create, params: params
    expect(response).to redirect_to :action => :new
    expect(response).to have_http_status(302)
  end
end
