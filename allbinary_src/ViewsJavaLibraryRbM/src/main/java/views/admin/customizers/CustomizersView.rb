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

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/sort/StringComparator"
require "org/allbinary/logic/visual/transform/info/CustomizerTransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/template/customizer/TransformTemplateCustomizerData"
require "org/allbinary/logic/visual/transform/template/customizer/TransformTemplateCustomizersData"
require "org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData"
require "org/allbinary/logic/visual/transform/template/util/TransformTemplateCustomizerUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

