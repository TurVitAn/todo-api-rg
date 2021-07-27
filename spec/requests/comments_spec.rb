RSpec.describe 'Comments', type: :request do
  let(:user) { create(:user) }
  let(:project) { create(:project, user_id: user.id) }
  let(:task) { create(:task, project_id: project.id) }
  let(:headers) { authorization_header_for(user) }

  describe 'POST #create' do
    context 'when success' do
      let(:params) { { description: FFaker::Lorem.word } }

      let(:request_comment) { post v1_task_comments_path(task, id: task), headers: headers, params: params }

      it 'create comment' do
        expect { request_comment }.to change(Comment, :count).from(0).to(1)
        expect(response).to be_created
      end
    end

    context 'when failed' do
      let(:params) { { description: '' } }

      before { post v1_task_comments_path(task, id: task), headers: headers, params: params, as: :json }

      it 'not create comment' do
        expect(response).to have_http_status :unprocessable_entity
        expect { response }.not_to change(Comment, :count)
      end
    end
  end

  describe 'DELETE #destroy' do
    let!(:comment) { create(:comment, task_id: task.id) }

    context 'when success destroy comment' do
      let(:request_comment) { delete v1_comment_path(comment), headers: headers, as: :json }

      it 'destroy comment' do
        expect { request_comment }.to change(Comment, :count).from(1).to(0)
        expect(response).to have_http_status :no_content
      end
    end

    context 'when failed destroy comment' do
      let(:failed_comment_id) { 0 }

      before { delete v1_comment_path(failed_comment_id), headers: headers, as: :json }

      it 'not destroy comment' do
        expect(response).to have_http_status :not_found
        expect(task.comments).not_to be_empty
      end
    end
  end
end
