require "spec_helper"

describe ExperimentDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/experiment_details").should route_to("experiment_details#index")
    end

    it "routes to #new" do
      get("/experiment_details/new").should route_to("experiment_details#new")
    end

    it "routes to #show" do
      get("/experiment_details/1").should route_to("experiment_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/experiment_details/1/edit").should route_to("experiment_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/experiment_details").should route_to("experiment_details#create")
    end

    it "routes to #update" do
      put("/experiment_details/1").should route_to("experiment_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/experiment_details/1").should route_to("experiment_details#destroy", :id => "1")
    end

  end
end
