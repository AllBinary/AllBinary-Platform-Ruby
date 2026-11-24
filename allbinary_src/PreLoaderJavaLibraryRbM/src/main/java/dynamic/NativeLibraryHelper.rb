#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package dynamic


module ::Dynamic

class NativeLibraryHelper
    attr_accessor :library

    def jfields_dynamic_NativeLibraryHelper
        @library = nil unless instance_variable_defined?(:@library)
    end
    

    def initialize(library)
        jfields_dynamic_NativeLibraryHelper
        @library = library
    end
    

    def load()
        ::Java::Lang::System.loadLibrary(@library)
    end
end

require "java/lang/System"

end

