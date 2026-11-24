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
# package org.allbinary.game.resource

require "java/lang/JavaOverload"
require "org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface"

module ::Org; module Allbinary; module Game; module Resource

class ResourceRelativeRelationshipFactory
    include ResourceRelativeRelationshipFactoryInterface
    attr_accessor :basicArrayListUtil, :hashtable, :initialized

    def jfields_org_allbinary_game_resource_ResourceRelativeRelationshipFactory
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        @initialized = false unless instance_variable_defined?(:@initialized)
    end

    def initialize
        jfields_org_allbinary_game_resource_ResourceRelativeRelationshipFactory
    end
    

    # throws Exception
    def init(level)
        self.setInitialized(true)
    end
    java_overload :init, 1
    

    # throws Exception
    def getResourceRelativeRelationshipList(resource)
        listCanBeNull = @hashtable.get(resource)
        if listCanBeNull == nil
            return @basicArrayListUtil.getImmutableInstance()
        end
        return listCanBeNull
    end
    java_overload :getResourceRelativeRelationshipList, 1
    

    # throws Exception
    def addResourceRelativeRelationship(resource, hardPoint)
        list = self.getResourceRelativeRelationshipList(resource)
        if list == @basicArrayListUtil.getImmutableInstance()
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
        end
        list.add(hardPoint)
        @hashtable.put(resource, list)
    end
    java_overload :addResourceRelativeRelationship, 2
    

    def isLoadingLevel(level)
        return false
    end
    java_overload :isLoadingLevel, 1
    

    def isFeature()
        return false
    end
    java_overload :isFeature, 0
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    java_overload :setInitialized, 1
    

    def isInitialized()
        return @initialized
    end
    java_overload :isInitialized, 0
end

module ::Org; module Allbinary; module Graphics; autoload :RelativeRelationship, "org/allbinary/graphics/RelativeRelationship" unless const_defined?(:RelativeRelationship, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end

end; end; end; end

