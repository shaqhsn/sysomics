require "spec_helper"

describe CellTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/cell_types").should route_to("cell_types#index")
    end

    it "routes to #new" do
      get("/cell_types/new").should route_to("cell_types#new")
    end

    it "routes to #show" do
      get("/cell_types/1").should route_to("cell_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cell_types/1/edit").should route_to("cell_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cell_types").should route_to("cell_types#create")
    end

    it "routes to #update" do
      put("/cell_types/1").should route_to("cell_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cell_types/1").should route_to("cell_types#destroy", :id => "1")
    end

  end
end
