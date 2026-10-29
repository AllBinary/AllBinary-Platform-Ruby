# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic

# require "javax/microedition/lcdui/Item"

#Handle the differences in the public platform vs the raw JS build
class MEUtil
    

    def self.getInstance()
        return MEUtil.instance
    end
    

    def appendItem(form, item)
        form.append(item)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/displayable/screen/CommandForm"

class MEUtil
    @@instance = MEUtil.new()
end

