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
# package views.admin.customizers

# require "java/util/Arrays"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

class CustomizersView < HttpStoreComponentView
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :customizersVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @customizersVector = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @customizersVector = TransformInfoEntityBuilder.getInstance().getNames(self.getWeblisketSession().getStoreName())
    end
    

    def toXmlNode(document)
        begin
            node = document.createElement(TransformTemplateCustomizersData::NAME)
            unsortedCustomizerViewVector = BasicArrayListD.new()
            size = @customizersVector.size()
            (0...size).each do |index|
                viewName = @customizersVector.get(index)
                if (viewName.index(CustomizerTransformInfoData::NAME) || -1) > 0 && (viewName.index(GLOBALS2.EDIT) || -1) > 0 && (viewName.index(BodyData.getInstance().VIEWNAMEKEY) || -1) > 0 && (viewName.index(TitleData.getInstance().VIEWNAMEKEY) || -1) > 0
                    unsortedCustomizerViewVector.add(viewName)
                end
            end
            objectArray = unsortedCustomizerViewVector.toArray()
            Arrays.sort(objectArray, StringComparator.new())
            (0...objectArray.length).each do |index|
                viewName = objectArray[index]
                viewNameNode = ModDomHelper.createNameValueNodes(document, TransformTemplateCustomizerData::NAME, viewName, TransformTemplateCustomizerUtil.getInstance().getPageNameHack(viewName, self.getWeblisketSession().getStoreName()))
                node.appendChild(viewNameNode)
            end
            return node
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR)
                @logUtil.put(@commonStrings.FAILURE, self, "toXmlNode", e)
            end
            return nil
        end
    end
    

    def addDomNodeInterfaces()
        self.addDomNodeInterface(self)
    end
    

    # throws Exception
    def view()
        begin
            self.addDomNodeInterfaces()
            return super()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :TransformInfoEntityBuilder, "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringComparator, "org/allbinary/logic/control/sort/StringComparator"
autoload :CustomizerTransformInfoData, "org/allbinary/logic/visual/transform/info/CustomizerTransformInfoData"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :TransformTemplateCustomizerData, "org/allbinary/logic/visual/transform/template/customizer/TransformTemplateCustomizerData"
autoload :TransformTemplateCustomizersData, "org/allbinary/logic/visual/transform/template/customizer/TransformTemplateCustomizersData"
autoload :BodyData, "org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData"
autoload :TitleData, "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData"
autoload :TransformTemplateCustomizerUtil, "org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

