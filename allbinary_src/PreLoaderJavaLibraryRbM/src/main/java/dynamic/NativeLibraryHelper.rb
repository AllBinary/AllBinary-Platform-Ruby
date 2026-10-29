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


class NativeLibraryHelper
    attr_accessor :library

    def initialize_fields
        @library = nil
    end
    

    def initialize(library)
        initialize_fields
        @library = library
    end
    

    def load()
        System.loadLibrary(@library)
    end
end

require "java/lang/System"

