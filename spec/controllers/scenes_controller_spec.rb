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

describe ScenesController do

  # This should return the minimal set of attributes required to create a valid
  # Scene. As you add validations to Scene, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "period" => "2014-05-27" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ScenesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all scenes as @scenes" do
      scene = Scene.create! valid_attributes
      get :index, {}, valid_session
      assigns(:scenes).should eq([scene])
    end
  end

  describe "GET show" do
    it "assigns the requested scene as @scene" do
      scene = Scene.create! valid_attributes
      get :show, {:id => scene.to_param}, valid_session
      assigns(:scene).should eq(scene)
    end
  end

  describe "GET new" do
    it "assigns a new scene as @scene" do
      get :new, {}, valid_session
      assigns(:scene).should be_a_new(Scene)
    end
  end

  describe "GET edit" do
    it "assigns the requested scene as @scene" do
      scene = Scene.create! valid_attributes
      get :edit, {:id => scene.to_param}, valid_session
      assigns(:scene).should eq(scene)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Scene" do
        expect {
          post :create, {:scene => valid_attributes}, valid_session
        }.to change(Scene, :count).by(1)
      end

      it "assigns a newly created scene as @scene" do
        post :create, {:scene => valid_attributes}, valid_session
        assigns(:scene).should be_a(Scene)
        assigns(:scene).should be_persisted
      end

      it "redirects to the created scene" do
        post :create, {:scene => valid_attributes}, valid_session
        response.should redirect_to(Scene.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved scene as @scene" do
        # Trigger the behavior that occurs when invalid params are submitted
        Scene.any_instance.stub(:save).and_return(false)
        post :create, {:scene => { "period" => "invalid value" }}, valid_session
        assigns(:scene).should be_a_new(Scene)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Scene.any_instance.stub(:save).and_return(false)
        post :create, {:scene => { "period" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested scene" do
        scene = Scene.create! valid_attributes
        # Assuming there are no other scenes in the database, this
        # specifies that the Scene created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Scene.any_instance.should_receive(:update).with({ "period" => "2014-05-27" })
        put :update, {:id => scene.to_param, :scene => { "period" => "2014-05-27" }}, valid_session
      end

      it "assigns the requested scene as @scene" do
        scene = Scene.create! valid_attributes
        put :update, {:id => scene.to_param, :scene => valid_attributes}, valid_session
        assigns(:scene).should eq(scene)
      end

      it "redirects to the scene" do
        scene = Scene.create! valid_attributes
        put :update, {:id => scene.to_param, :scene => valid_attributes}, valid_session
        response.should redirect_to(scene)
      end
    end

    describe "with invalid params" do
      it "assigns the scene as @scene" do
        scene = Scene.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Scene.any_instance.stub(:save).and_return(false)
        put :update, {:id => scene.to_param, :scene => { "period" => "invalid value" }}, valid_session
        assigns(:scene).should eq(scene)
      end

      it "re-renders the 'edit' template" do
        scene = Scene.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Scene.any_instance.stub(:save).and_return(false)
        put :update, {:id => scene.to_param, :scene => { "period" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested scene" do
      scene = Scene.create! valid_attributes
      expect {
        delete :destroy, {:id => scene.to_param}, valid_session
      }.to change(Scene, :count).by(-1)
    end

    it "redirects to the scenes list" do
      scene = Scene.create! valid_attributes
      delete :destroy, {:id => scene.to_param}, valid_session
      response.should redirect_to(scenes_url)
    end
  end

end