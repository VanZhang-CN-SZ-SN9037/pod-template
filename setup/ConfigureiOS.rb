module Pod

  class ConfigureIOS
    attr_reader :configurator

    #类执行方法，接收参数
    def self.perform(options)
      new(options).perform
    end

    #初始化
    def initialize(options)
      @configurator = options.fetch(:configurator) #取出 TemlateConfigurator对象
    end

    #对象执行方法
    def perform

      #默认值
      prefix = "NK"

      #调用ProjectManipulator类的方法，使用hash参数初始化
      Pod::ProjectManipulator.new({
        :configurator => @configurator,
        :xcodeproj_path => "templates/objc/Example/PROJECT.xcodeproj",
        :platform => :ios,
        :prefix => prefix
      }).run

      # There has to be a single file in the Classes dir
      # or a framework won't be created, which is now default
      
      `touch Sources/Classes/ReplaceMe.m`

      `mv ./templates/objc/Example/* ./`

    end
  end

end
