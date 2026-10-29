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
# package org.allbinary.game.layer.resources


class OnDemandResources
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def waitFor()
    end
    

    # throws Exception
    def init()
    end
    

    # throws Exception
    def initAt(imageCache, resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
        return 0
    end
end

require "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/image/ImageCache"
require "org/allbinary/logic/communication/log/LogUtil"

class OnDemandResources
    NULL_ON_DEMAND_RESOURCES = OnDemandResources.new()
end

