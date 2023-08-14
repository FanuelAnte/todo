require 'rails_helper'

RSpec.describe "/to_dos", type: :request do
  include_examples('request_shared_spec', 'to_dos', 5)

  let(:valid_attributes) do
  {
    to_do: {
      task: Faker::Lorem.sentence(word_count: 5),
      isComplete: true
    }
  }
  end

  let(:invalid_attributes) do
  {
    to_do: {
      task: Faker::Lorem.sentence(word_count: 5),
      isComplete: nil
    }
  }
  end

  let(:new_attributes) do
    {
      task: Faker::Lorem.sentence(word_count: 5)
    }
  end
  
  # describe "GET /index" do
  #   it "renders a successful response" do
  #     ToDo.create! valid_attributes
  #     get to_dos_url
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /show" do
  #   it "renders a successful response" do
  #     to_do = ToDo.create! valid_attributes
  #     get to_do_url(to_do)
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_to_do_url
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /edit" do
  #   it "render a successful response" do
  #     to_do = ToDo.create! valid_attributes
  #     get edit_to_do_url(to_do)
  #     expect(response).to be_successful
  #   end
  # end

  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new ToDo" do
  #       expect {
  #         post to_dos_url, params: { to_do: valid_attributes }
  #       }.to change(ToDo, :count).by(1)
  #     end

  #     it "redirects to the created to_do" do
  #       post to_dos_url, params: { to_do: valid_attributes }
  #       expect(response).to redirect_to(to_do_url(ToDo.last))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "does not create a new ToDo" do
  #       expect {
  #         post to_dos_url, params: { to_do: invalid_attributes }
  #       }.to change(ToDo, :count).by(0)
  #     end

  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post to_dos_url, params: { to_do: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "PATCH /update" do
  #   context "with valid parameters" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested to_do" do
  #       to_do = ToDo.create! valid_attributes
  #       patch to_do_url(to_do), params: { to_do: new_attributes }
  #       to_do.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "redirects to the to_do" do
  #       to_do = ToDo.create! valid_attributes
  #       patch to_do_url(to_do), params: { to_do: new_attributes }
  #       to_do.reload
  #       expect(response).to redirect_to(to_do_url(to_do))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "renders a successful response (i.e. to display the 'edit' template)" do
  #       to_do = ToDo.create! valid_attributes
  #       patch to_do_url(to_do), params: { to_do: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "DELETE /destroy" do
  #   it "destroys the requested to_do" do
  #     to_do = ToDo.create! valid_attributes
  #     expect {
  #       delete to_do_url(to_do)
  #     }.to change(ToDo, :count).by(-1)
  #   end

  #   it "redirects to the to_dos list" do
  #     to_do = ToDo.create! valid_attributes
  #     delete to_do_url(to_do)
  #     expect(response).to redirect_to(to_dos_url)
  #   end
  # end
end
