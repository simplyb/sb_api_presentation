module ToRabl
  #dummy scope creation object
  class Scope
  end
  
  def to_rabl(options={}, &block)

    #fabricate scope
    if options[:scope]
      scope = Scope.new
      options[:scope].each_pari do |key, vaue|
        scope.instance_variable_set("@#{key.to_s}", value)
      end
    end

    #set the object to the caller
    options.merge!(:object => self)
    
    #create a builder with the scope
    builder = Rabl::Builder.new(nil, { :format => "json", :scope => scope})
    obj_hash = builder.partial("#{self.rabl_template_dir}/#{api_folder}_#{self.rabl_template}", options, &block)

  end

  def rabl_template
    @rabl_template ||= self.class.name.underscore
  end

  def rabl_template_dir
    @rabl_template_dir ||= self.rabl_template.pluralize
  end

end

class ActiveRecord::Base
  self.send(:include, ToRabl)
end