require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe StarbasesController do

  def mock_starbase(stubs={})
    @mock_starbase ||= mock_model(Starbase, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all starbases as @starbases" do
      Starbase.stub(:all) { [mock_starbase] }
      get :index
      assigns(:starbases).should eq([mock_starbase])
    end
  end

  describe "GET show" do
    it "assigns the requested starbase as @starbase" do
      Starbase.stub(:find).with("37") { mock_starbase }
      get :show, :id => "37"
      assigns(:starbase).should be(mock_starbase)
    end
  end

  describe "GET new" do
    it "assigns a new starbase as @starbase" do
      Starbase.stub(:new) { mock_starbase }
      get :new
      assigns(:starbase).should be(mock_starbase)
    end
  end

  describe "GET edit" do
    it "assigns the requested starbase as @starbase" do
      Starbase.stub(:find).with("37") { mock_starbase }
      get :edit, :id => "37"
      assigns(:starbase).should be(mock_starbase)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created starbase as @starbase" do
        Starbase.stub(:new).with({'these' => 'params'}) { mock_starbase(:save => true) }
        post :create, :starbase => {'these' => 'params'}
        assigns(:starbase).should be(mock_starbase)
      end

      it "redirects to the created starbase" do
        Starbase.stub(:new) { mock_starbase(:save => true) }
        post :create, :starbase => {}
        response.should redirect_to(starbasis_url(mock_starbase))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved starbase as @starbase" do
        Starbase.stub(:new).with({'these' => 'params'}) { mock_starbase(:save => false) }
        post :create, :starbase => {'these' => 'params'}
        assigns(:starbase).should be(mock_starbase)
      end

      it "re-renders the 'new' template" do
        Starbase.stub(:new) { mock_starbase(:save => false) }
        post :create, :starbase => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested starbase" do
        Starbase.stub(:find).with("37") { mock_starbase }
        mock_starbasis.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :starbase => {'these' => 'params'}
      end

      it "assigns the requested starbase as @starbase" do
        Starbase.stub(:find) { mock_starbase(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:starbase).should be(mock_starbase)
      end

      it "redirects to the starbase" do
        Starbase.stub(:find) { mock_starbase(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(starbasis_url(mock_starbase))
      end
    end

    describe "with invalid params" do
      it "assigns the starbase as @starbase" do
        Starbase.stub(:find) { mock_starbase(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:starbase).should be(mock_starbase)
      end

      it "re-renders the 'edit' template" do
        Starbase.stub(:find) { mock_starbase(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested starbase" do
      Starbase.stub(:find).with("37") { mock_starbase }
      mock_starbasis.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the starbases list" do
      Starbase.stub(:find) { mock_starbase }
      delete :destroy, :id => "1"
      response.should redirect_to(starbases_url)
    end
  end

end