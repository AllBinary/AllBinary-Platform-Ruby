# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.layer

require "java/lang/Object"

class LayerManager
    attr_accessor :logUtil, :commonStrings, :systemWrapper, :tsUtil, :layerManagerLogging, :list, :anyType

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @systemWrapper = ABSystemWrapper.getInstance()
        @tsUtil = TsUtil.getInstance()
        @layerManagerLogging = nil
        @list = BasicArrayListD.new()
        @anyType = SynchObject.new()
    end
    

    def initialize(layerManagerLogging)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @layerManagerLogging = layerManagerLogging
    end
    

    def contains(layerInterface)
        return @list.contains(layerInterface)
    end
    

    # throws Exception
    def update(layerInterface)
        had = @list.remove(layerInterface)
        if had
            nextLayerInterface = nil
            size = @list.size()
            (0...size).each do |index|
                nextLayerInterface = @list.get(index)
                if layerInterface.getZP() > nextLayerInterface.getZP()
                    @list.addAt(index, layerInterface)
                    return
                end
            end
            @list.add(layerInterface)
        end
    end
    

    # throws Exception
    def insert(layerInterface)
        nextLayerInterface = nil
        size = @list.size()
        (0...size).each do |index|
            nextLayerInterface = @list.get(index)
            if layerInterface.getZP() > nextLayerInterface.getZP()
                self.appendAt(layerInterface, index)
                return
            end
        end
        self.append(layerInterface)
    end
    

    # throws Exception
    def append(layerInterface)
        @layerManagerLogging.append(layerInterface)
        @list.add(layerInterface)
    end
    

    # throws Exception
    def appendAt(layerInterface, index)
        @layerManagerLogging.appendAt(layerInterface, index)
        @list.addAt(index, layerInterface)
    end
    

    # throws Exception
    def remove(layerInterface)
        (@anyType).java_monitor.synchronize do
            @layerManagerLogging.remove(layerInterface)
            result = @list.remove(layerInterface)
            @layerManagerLogging.removeResult(self, layerInterface, result)
        end
    end
    

    def getLayerAt(index)
        return @list.objectArray[index]
    end
    

    def getSize()
        return @list.size()
    end
    

    # throws Exception
    def cleanup()
        (@anyType).java_monitor.synchronize do
            @list.clear()
            @layerManagerLogging.clear()
            @tsUtil.gc()
            @tsUtil.gc()
        end
    end
    

    def paint(g, x, y)
        (@anyType).java_monitor.synchronize do
            comp = nil
            index = @list.size()
            while (index -= 1) >= 0
                comp = @list.objectArray[index]
                if comp != nil && comp.isVisible()
                    comp.paint(g)
                end
            end
        end
    end
end

autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :TsUtil, "org/allbinary/TsUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :SynchObject, "org/allbinary/thread/SynchObject"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :Layer, "org/allbinary/layer/Layer"
autoload :LayerManagerLoggingBase, "org/allbinary/layer/LayerManagerLoggingBase"

