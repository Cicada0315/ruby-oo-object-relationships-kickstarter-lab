class Project
    attr_reader :title

    def initialize(title)
      @title=title
    end

    def add_backer(backer)
      ProjectBacker.new(self, backer)
    end

    def backers
        projectbackerlist.collect do |project|
            project.backer
        end
      end
    
    def projectbackerlist
        ProjectBacker.all.select do |projectbacker|
            projectbacker.project==self
        end
    end
end