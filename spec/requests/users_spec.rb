require 'rails_helper'

RSpec.describe "Users", type: :request do
    describe "GET /users" do
        it "works! (now write some real specs)" do
        get users_path
        expect(response).to have_http_status(200)
        end
    end

    describe "GET /users/:id" do
        it "works! (now write some real specs)" do
        get user_path(1)
        expect(response).to have_http_status(200)
        end
    end

    describe "GET /users/:user_id/posts" do
        it "works! (now write some real specs)" do
        get user_posts_path(1)
        expect(response).to have_http_status(200)
        end
    end

    describe "Render correct template" do
        it "renders the index template" do
        get users_path
        expect(response).to render_template("index")
        end

        it "renders the show template" do
        get user_path(1)
        expect(response).to render_template("show")
        end

        it "renders the posts template" do
        get user_posts_path(1)
        expect(response).to render_template("posts/index")
        end
    end

end