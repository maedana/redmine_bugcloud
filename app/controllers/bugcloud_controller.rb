class BugcloudController < ApplicationController

  def index
    @project = Project.find params[:id]
    @issues = @project.issues
  end
end
