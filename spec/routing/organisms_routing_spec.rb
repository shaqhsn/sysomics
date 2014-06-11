require "spec_helper"

describe OrganismsController do
  describe "routing" do

    it "routes to #index" do
      get("/organisms").should route_to("organisms#index")
    end

    it "routes to #new" do
      get("/organisms/new").should route_to("organisms#new")
    end

    it "routes to #show" do
      get("/organisms/1").should route_to("organisms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/organisms/1/edit").should route_to("organisms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/organisms").should route_to("organisms#create")
    end

    it "routes to #update" do
      put("/organisms/1").should route_to("organisms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/organisms/1").should route_to("organisms#destroy", :id => "1")
    end

  end
end
