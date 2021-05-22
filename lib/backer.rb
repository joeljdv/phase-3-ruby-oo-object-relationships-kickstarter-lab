class Backer

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        backed = ProjectBacker.all.select{|pb| pb.backer == self }
        backed.map{|pb| pb.project}
    end

end