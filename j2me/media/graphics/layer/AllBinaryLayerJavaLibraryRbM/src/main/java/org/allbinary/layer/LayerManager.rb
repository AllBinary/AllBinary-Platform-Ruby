# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.layer

require "java/lang/Object"

module ::Org; module Allbinary; module Layer

class LayerManager
    attr_accessor :logUtil, :commonStrings, :systemWrapper, :tsUtil, :layerManagerLogging, :list, :anyType

    def jfields_org_allbinary_layer_LayerManager
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @systemWrapper = ::Org::Allbinary::Logic::ABSystemWrapper.getInstance()
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @layerManagerLogging = nil unless instance_variable_defined?(:@layerManagerLogging)
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @anyType = ::Org::Allbinary::ThreadPackage::SynchObject.new()
    end
    

    def initialize(layerManagerLogging)
        jfields_org_allbinary_layer_LayerManager
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

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :SynchObject, "org/allbinary/thread/SynchObject" unless const_defined?(:SynchObject, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper" unless const_defined?(:ABSystemWrapper, false); end; end; end
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false)
autoload :Layer, "org/allbinary/layer/Layer" unless const_defined?(:Layer, false)
autoload :LayerManagerLoggingBase, "org/allbinary/layer/LayerManagerLoggingBase" unless const_defined?(:LayerManagerLoggingBase, false)

end; end; end

