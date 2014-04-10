require "spec_helper"

describe ApplicationController do
  controller do
    def index
      current_user
      render text: 'hello'
    end
  end

  context "when signed in" do
    let(:user) { User.create!(password: 'password', password_confirmation: 'password') }
    let(:user_session) { Session.create!(user: user) }

    before { get :index, {}, user_session_id: user_session.id }

    it "lets you continue to do whatever the heck you were trying to do" do
      response.status.should == 200
    end

    it "loads the current user" do
      assigns(:current_user).should == user
    end
  end

  context "when not signed in" do
    it "boots you out when their is no session_id" do
      get :index
      response.should redirect_to(new_login_path)
    end

    it "boots you out when the session id is not known" do
      Session.stub(:find).with(100).and_raise(ActiveRecord::RecordNotFound)

      get :index, {}, user_session_id: 100
      response.should redirect_to(new_login_path)
    end
  end
end