class Backer
  attr_reader :name

  def initialize(name)
    @name=name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projectbacker_list.collect do |project|
        project.project
    end
  end

  def projectbacker_list
    ProjectBacker.all.select do |projectbacker|
        projectbacker.backer==self
    end
  end
end