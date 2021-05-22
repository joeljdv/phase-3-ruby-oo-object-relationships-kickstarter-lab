class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backed = ProjectBacker.all.select{|pb| pb.project == self }
        backed.map{|pb| pb.backer}
    end

end