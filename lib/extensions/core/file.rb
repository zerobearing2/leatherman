module Extensions
  module Core
    module File

      module ClassMethods

        #
        # shortcut to reading file content in binmode
        #
        def binary_read(path)
          file = open(path)
          file.binmode
          file.read
        ensure
          file.close
        end
        alias :bin_read :binary_read
        
      end
      
    end
  end
end


#
# Injection
# 
class ::File
  extend Extensions::Core::File::ClassMethods
end