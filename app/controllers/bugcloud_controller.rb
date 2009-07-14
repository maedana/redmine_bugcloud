class BugcloudController < ApplicationController
  unloadable

  def index
    @project = Project.find params[:id]
    @issues = @project.issues
  end
end
