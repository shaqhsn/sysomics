require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PublicRepositoriesController do

  # This should return the minimal set of attributes required to create a valid
  # PublicRepository. As you add validations to PublicRepository, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PublicRepositoriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all public_repositories as @public_repositories" do
      public_repository = PublicRepository.create! valid_attributes
      get :index, {}, valid_session
      assigns(:public_repositories).should eq([public_repository])
    end
  end

  describe "GET show" do
    it "assigns the requested public_repository as @public_repository" do
      public_repository = PublicRepository.create! valid_attributes
      get :show, {:id => public_repository.to_param}, valid_session
      assigns(:public_repository).should eq(public_repository)
    end
  end

  describe "GET new" do
    it "assigns a new public_repository as @public_repository" do
      get :new, {}, valid_session
      assigns(:public_repository).should be_a_new(PublicRepository)
    end
  end

  describe "GET edit" do
    it "assigns the requested public_repository as @public_repository" do
      public_repository = PublicRepository.create! valid_attributes
      get :edit, {:id => public_repository.to_param}, valid_session
      assigns(:public_repository).should eq(public_repository)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PublicRepository" do
        expect {
          post :create, {:public_repository => valid_attributes}, valid_session
        }.to change(PublicRepository, :count).by(1)
      end

      it "assigns a newly created public_repository as @public_repository" do
        post :create, {:public_repository => valid_attributes}, valid_session
        assigns(:public_repository).should be_a(PublicRepository)
        assigns(:public_repository).should be_persisted
      end

      it "redirects to the created public_repository" do
        post :create, {:public_repository => valid_attributes}, valid_session
        response.should redirect_to(PublicRepository.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved public_repository as @public_repository" do
        # Trigger the behavior that occurs when invalid params are submitted
        PublicRepository.any_instance.stub(:save).and_return(false)
        post :create, {:public_repository => { "name" => "invalid value" }}, valid_session
        assigns(:public_repository).should be_a_new(PublicRepository)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PublicRepository.any_instance.stub(:save).and_return(false)
        post :create, {:public_repository => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested public_repository" do
        public_repository = PublicRepository.create! valid_attributes
        # Assuming there are no other public_repositories in the database, this
        # specifies that the PublicRepository created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PublicRepository.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => public_repository.to_param, :public_repository => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested public_repository as @public_repository" do
        public_repository = PublicRepository.create! valid_attributes
        put :update, {:id => public_repository.to_param, :public_repository => valid_attributes}, valid_session
        assigns(:public_repository).should eq(public_repository)
      end

      it "redirects to the public_repository" do
        public_repository = PublicRepository.create! valid_attributes
        put :update, {:id => public_repository.to_param, :public_repository => valid_attributes}, valid_session
        response.should redirect_to(public_repository)
      end
    end

    describe "with invalid params" do
      it "assigns the public_repository as @public_repository" do
        public_repository = PublicRepository.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PublicRepository.any_instance.stub(:save).and_return(false)
        put :update, {:id => public_repository.to_param, :public_repository => { "name" => "invalid value" }}, valid_session
        assigns(:public_repository).should eq(public_repository)
      end

      it "re-renders the 'edit' template" do
        public_repository = PublicRepository.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PublicRepository.any_instance.stub(:save).and_return(false)
        put :update, {:id => public_repository.to_param, :public_repository => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested public_repository" do
      public_repository = PublicRepository.create! valid_attributes
      expect {
        delete :destroy, {:id => public_repository.to_param}, valid_session
      }.to change(PublicRepository, :count).by(-1)
    end

    it "redirects to the public_repositories list" do
      public_repository = PublicRepository.create! valid_attributes
      delete :destroy, {:id => public_repository.to_param}, valid_session
      response.should redirect_to(public_repositories_url)
    end
  end

end
