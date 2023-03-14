class ProjectsController < ApplicationController
  def index
  end
  def update
    @project = Project.find(params[:id])
    status=@project.status == "Active"?  "Inactive" :  "Active"
    @project.status =status
      respond_to do |format|
   update_history= UpdateHistory.create!(user: current_user, project: @project, status: status)
            if @project.save!
                       format.turbo_stream {
          render turbo_stream:  [
            turbo_stream.append( "update-histories", UpdateHistoryComponent.new(update_history).render_in(view_context)),
            turbo_stream.replace( 'project-status', "<h3 id ='project-status'>Project status: #{@project.status}</h3>")
                    ]

        }
            end
      end
  end
end
