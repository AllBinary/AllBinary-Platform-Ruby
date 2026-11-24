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
# package org.allbinary.layer


module ::Org; module Allbinary; module Layer

class LayerManagerLoggingBase
    

    # throws Exception
    def append(layerInterface)
    end
    

    def appendAt(layerInterface, index)
    end
    

    def remove(layerInterface)
    end
    

    def removeResult(layerManager, layerInterface, result)
    end
    

    def clear()
    end
end

autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false)
autoload :LayerManager, "org/allbinary/layer/LayerManager" unless const_defined?(:LayerManager, false)

end; end; end

