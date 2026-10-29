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
# package org.allbinary.media.graphics.geography.map.drop

require "org/allbinary/media/graphics/geography/map/drop/BaseDropCellPositionGenerator"

class NullDropCellPositionGenerator < BaseDropCellPositionGenerator
    

    def self.getInstance()
        return NullDropCellPositionGenerator.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class NullDropCellPositionGenerator
    @@instance = NullDropCellPositionGenerator.new()
end

