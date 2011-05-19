require "spec_helper"

describe StarbasesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/starbases" }.should route_to(:controller => "starbases", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/starbases/new" }.should route_to(:controller => "starbases", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/starbases/1" }.should route_to(:controller => "starbases", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/starbases/1/edit" }.should route_to(:controller => "starbases", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/starbases" }.should route_to(:controller => "starbases", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/starbases/1" }.should route_to(:controller => "starbases", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/starbases/1" }.should route_to(:controller => "starbases", :action => "destroy", :id => "1")
    end

  end
end