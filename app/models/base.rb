class Base
    #dummy scope creation object
  class RablScope

    def view_paths
      "app/views"
    end

  end
  
  def to_rabl(options={}, &block)

    #fabricate scope
    scope = RablScope.new
    if options[:scope]
      options[:scope].each_pair do |key, value|
        scope.instance_variable_set("@#{key.to_s}", value)
      end
    end

    #set the object to the caller
    options.merge!({:object => self})
    
    #create a builder with the scope
    builder = Rabl::Builder.new({ :format => "json" })
    obj_hash = builder.partial("#{self.rabl_template_dir}/_#{self.rabl_template}", options, &block)

  end

  def rabl_template
    @rabl_template ||= self.class.name.underscore
  end

  def rabl_template_dir
    @rabl_template_dir ||= self.rabl_template.pluralize
  end

end