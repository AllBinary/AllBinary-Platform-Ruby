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
# package org.allbinary.media.graphics.geography.pathfinding


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

module PathFindingInfoInterface
    

    def getStartPathFindingNodeList()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getEndPathFindingNodeList()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getPathFinder()
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :GeographicPathFinderBase, "org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase" unless const_defined?(:GeographicPathFinderBase, false)

end; end; end; end; end; end

