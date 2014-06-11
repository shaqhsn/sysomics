require "spec_helper"

describe ProtocolsController do
  describe "routing" do

    it "routes to #index" do
      get("/protocols").should route_to("protocols#index")
    end

    it "routes to #new" do
      get("/protocols/new").should route_to("protocols#new")
    end

    it "routes to #show" do
      get("/protocols/1").should route_to("protocols#show", :id => "1")
    end

    it "routes to #edit" do
      get("/protocols/1/edit").should route_to("protocols#edit", :id => "1")
    end

    it "routes to #create" do
      post("/protocols").should route_to("protocols#create")
    end

    it "routes to #update" do
      put("/protocols/1").should route_to("protocols#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/protocols/1").should route_to("protocols#destroy", :id => "1")
    end

  end
end
