require "spec_helper"

describe ProjectAttachmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/project_attachments").should route_to("project_attachments#index")
    end

    it "routes to #new" do
      get("/project_attachments/new").should route_to("project_attachments#new")
    end

    it "routes to #show" do
      get("/project_attachments/1").should route_to("project_attachments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/project_attachments/1/edit").should route_to("project_attachments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/project_attachments").should route_to("project_attachments#create")
    end

    it "routes to #update" do
      put("/project_attachments/1").should route_to("project_attachments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/project_attachments/1").should route_to("project_attachments#destroy", :id => "1")
    end

  end
end
