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
# package org.allbinary.input.motion.button


class BaseTouchInput
    attr_accessor :commonStrings, :basicArrayListUtil

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def getList()
        return @basicArrayListUtil.getImmutableInstance()
    end
    

    def toString()
        return self.class.name
    end
    alias_method :to_s, :toString
end

autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil"

