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
# package org.allbinary.logic.visual.theme

require "org/allbinary/data/tables/TableMappingInterface"

module ThemeInterface
    include TableMappingInterface
    

    def getName()
        raise NotImplementedError
    end
    

    def getPath()
        raise NotImplementedError
    end
    

    def getPreviewImageName()
        raise NotImplementedError
    end
    

    def getPreviewImagePath()
        raise NotImplementedError
    end
end

