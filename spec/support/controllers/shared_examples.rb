RSpec.shared_examples 'request_shared_spec' do |controller, field_count, exclude = []|
    include Rails.application.routes.url_helpers
  
    let(:factory) { controller.classify.underscore.to_sym }
    let(:clazz) { "#{controller.classify}".constantize }
  
    unless exclude.include?(:index)
      describe 'GET /index' do
        it 'returns success response' do
          count = clazz.count
          3.times { create(factory) }
          get send("#{controller}_url"), headers: headers
          expect(response).to be_successful
          # Add expectations for the rendered view instead of JSON response
        end
      end
    end
  
    unless exclude.include?(:show)
      describe 'GET /show' do
        it 'returns a success response' do
          obj = create(factory)
          get send("#{controller.singularize}_url", obj), headers: headers
          expect(response).to be_successful
          # Add expectations for the rendered view instead of JSON response
        end
      end
    end
  
    unless exclude.include?(:create)
      describe 'POST /create' do
        context 'with valid params' do
          it 'creates a new object' do
            params = valid_attributes
            expect do
              post send("#{controller}_url"), params: params
            end.to change(clazz, :count).by(1)
            # expect(response).to redirect_to(some_path) # Specify the path to redirect after object creation
            # Add expectations for the created object or flash messages
          end
        end
  
        context 'with invalid params' do
          it 'renders a new template with errors for the new object' do
            params = invalid_attributes
            post send("#{controller}_url"), params: params
            expect(response).to be_unsuccessful
            # Add expectations for the rendered view instead of JSON response
          end
        end
      end
    end
  
    unless exclude.include?(:update)
      describe 'PUT /update' do
        context 'with valid params' do
          it 'updates the requested object' do
            obj = create(factory)
            params = { id: obj.to_param, payload: new_attributes }
            put send("#{controller.singularize}_url", obj), params: params
            obj.reload
            expect(obj.send(new_attributes.keys[0])).to eq new_attributes.values[0]
  
            # expect(response).to redirect_to(some_path) # Specify the path to redirect after object update
            # Add expectations for the updated object or flash messages
          end
        end
  
        context 'with invalid params' do
          it 'renders an edit template with errors for the object' do
            obj = create(factory)
            params = { id: obj.to_param, payload: invalid_attributes }
            put send("#{controller.singularize}_url", obj), params: params
            expect(response).to render_template(:edit)
            # Add expectations for the rendered view instead of JSON response
          end
        end
      end
    end
  end