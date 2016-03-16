require 'rails_helper'

describe UsersController, :type => :controller do
    
    before do
        @user = User.create!(email: "kpez16@gmail.com", password: "kixalot16")
        @user_1 = User.create!(email: "juliapezant@gmail.com", password: "Lfc4life!")
    end
    
    describe "GET #show" do
        context "User is logged in" do
            
            before do
                sign_in @user
            end
            
            it "loads correct user details" do
                get :show, id: @user.id
                expect(response).to have_http_status(200)
                expect(assigns(:user)).to eq @user
            end
        end
        
        context "No user is logged in" do
            it "redirects to login" do
                get :show, id: @user.id
                expect(response).to redirect_to("/login")
            end
        end
    end
    
    describe "GET #show, id: @user.id" do
        context "User_1 is logged in trying to view user" do
        
            before do
                sign_in @user_1
            end

            it "redirects to login" do
                get :show, id: @user.id
                expect(response).to redirect_to(root_path)
            end
        end
    end
        
end