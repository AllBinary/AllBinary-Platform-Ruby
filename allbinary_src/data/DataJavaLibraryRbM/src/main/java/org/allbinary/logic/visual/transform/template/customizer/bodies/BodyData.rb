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
# package org.allbinary.logic.visual.transform.template.customizer.bodies


class BodyData
    attr_accessor :NAME, :VIEWNAMEKEY, :MIN

    def initialize_fields
        @NAME = "BODY_NAME"
        @VIEWNAMEKEY = "Body"
        @MIN = 0
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return BodyData.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class BodyData
    @@instance = BodyData.new()
end

