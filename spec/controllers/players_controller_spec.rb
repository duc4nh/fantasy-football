require 'rails_helper'

RSpec.describe PlayersController, type: :controller do
  let (:player) { create(:player) }

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

  it "renders the edit template" do
    get :edit, params: {id: player.id}
    expect(response).to render_template("edit")
    expect(response).to have_http_status(200)
  end

  it "creates new record" do
    params = {
      first_name: 'F',
      last_name: 'L',
      player: {
        team_id: ''
      }
    }
    post :create, params: params
    expect(response).to redirect_to :action => :index
    expect(response).to have_http_status(302)
  end

  let (:team) { create(:team, :with_players) }
  it "does not create new record if team is full" do
    params = {
      first_name: 'F',
      last_name: 'L',
      player: {
        team_id: team.id
      }
    }
    post :create, params: params
    expect(response).to redirect_to :action => :new
    expect(response).to have_http_status(302)
  end

  it "updates record" do
    params = {
      id: player.id,
      first_name: 'F',
      last_name: 'L',
      player: {
        team_id: ''
      }
    }
    put :update, params: params
    expect(response).to redirect_to :action => :index
    expect(response).to have_http_status(302)
  end

  let (:team) { create(:team, :with_players) }
  it "does not update record if team is full" do
    params = {
      id: player.id,
      first_name: 'F',
      last_name: 'L',
      player: {
        team_id: team.id
      }
    }
    put :update, params: params
    expect(response).to redirect_to :action => :edit
    expect(response).to have_http_status(302)
  end

  it "deleted record" do
    params = {
      id: player.id
    }
    delete :destroy, params: params
    expect(response).to redirect_to :action => :index
    expect(response).to have_http_status(302)
  end
end
