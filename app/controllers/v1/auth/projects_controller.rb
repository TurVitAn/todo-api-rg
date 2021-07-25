module V1
  class ProjectsController < ApplicationController
    before_action :authorize_access_request!

    def index
      render json: ProjectSerializer.new(projects).serializable_hash
    end

    def create
      project_form = ProjectForm.new(project_params.merge(user_id: current_user.id))
      project = project_form.save
      if project
        render json: ProjectSerializer.new(project).serializable_hash, status: :created
      else
        entity_error(:unprocessable_entity, project_form.errors)
      end
    end

    def update
      project_form = ProjectForm.new(project_params.merge(id: current_project.id))
      if project_form.update
        render json: ProjectSerializer.new(current_project).serializable_hash
      else
        entity_error(:unprocessable_entity, project_form.errors)
      end
    end

    def destroy
      current_project.destroy
      head :no_content
    end

    private

    def project_params
      params.permit(:name)
    end

    def projects
      @projects ||= Project.all
    end
  end
end
