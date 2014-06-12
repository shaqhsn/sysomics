require "spec_helper"

describe PublicRepositoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/public_repositories").should route_to("public_repositories#index")
    end

    it "routes to #new" do
      get("/public_repositories/new").should route_to("public_repositories#new")
    end

    it "routes to #show" do
      get("/public_repositories/1").should route_to("public_repositories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/public_repositories/1/edit").should route_to("public_repositories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/public_repositories").should route_to("public_repositories#create")
    end

    it "routes to #update" do
      put("/public_repositories/1").should route_to("public_repositories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/public_repositories/1").should route_to("public_repositories#destroy", :id => "1")
    end

  end
end
