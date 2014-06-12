require "spec_helper"

describe SoftwareParametersController do
  describe "routing" do

    it "routes to #index" do
      get("/software_parameters").should route_to("software_parameters#index")
    end

    it "routes to #new" do
      get("/software_parameters/new").should route_to("software_parameters#new")
    end

    it "routes to #show" do
      get("/software_parameters/1").should route_to("software_parameters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/software_parameters/1/edit").should route_to("software_parameters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/software_parameters").should route_to("software_parameters#create")
    end

    it "routes to #update" do
      put("/software_parameters/1").should route_to("software_parameters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/software_parameters/1").should route_to("software_parameters#destroy", :id => "1")
    end

  end
end
