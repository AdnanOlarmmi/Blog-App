require 'rails_helper'


RSpec.describe "Posts", type: :request do
    describe "GET /users/:user_id/posts" do
        it "works! (now write some real specs)" do
        get user_posts_path(1)
        expect(response).to have_http_status(200)
        end
    end

    describe "GET /users/:user_id/posts/:id" do
        it "works! (now write some real specs)" do
        get user_post_path(1, 1)
        expect(response).to have_http_status(200)
        end
    end

    describe "Render correct template" do
        it "renders the posts template" do
            get user_posts_path(1)
            expect(response).to render_template("posts/index")
        end
    end
end
