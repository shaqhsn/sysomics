require "spec_helper"

describe DataSetTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/data_set_types").should route_to("data_set_types#index")
    end

    it "routes to #new" do
      get("/data_set_types/new").should route_to("data_set_types#new")
    end

    it "routes to #show" do
      get("/data_set_types/1").should route_to("data_set_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/data_set_types/1/edit").should route_to("data_set_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/data_set_types").should route_to("data_set_types#create")
    end

    it "routes to #update" do
      put("/data_set_types/1").should route_to("data_set_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/data_set_types/1").should route_to("data_set_types#destroy", :id => "1")
    end

  end
end
