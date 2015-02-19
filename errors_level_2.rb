class Video
    attr_reader :url, :tags

    def initalize(url, title)
        @url = url
        @title = title
        @tags = []
        views = 0
    end

    def views
        @views
    end

    def add_to_tags(tag)
        if @tags.include?(tag)
            @tags << tag
        else
            puts "that tag already exists"
        end
        puts tags
    end

    def remove_tag(tag)
        @tags.delete(tag)
    end

    def play
        puts "playing #{title}"
        @views += 1
    end
