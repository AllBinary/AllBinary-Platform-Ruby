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
# package org.allbinary.logic.visual.transform.template.customizer.widgets.title

require "org/allbinary/data/tree/dom/DomNodeInterface"

class TitleView
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :title

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @title = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @title = TitleView::NAME
    end
    

    def constructor1(node)
        initialize_fields
        titleTextNode = DomSearchHelper.getNode(TitleData.getInstance().TEXT, node.getChildNodes())
        valueNode = DomSearchHelper.getNode(DomData::VALUE, titleTextNode.getChildNodes())
        @title = DomNodeHelper.getTextNodeValue(valueNode)
        if StringValidationUtil.getInstance().isEmpty(@title)
            @title = TitleView::NAME
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("Title: " + (self.getTitle()).to_s, self, "Consructor()")
        end
    end
    

    def constructor1(hashMap)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("HashMap: " + hashMap.to_s, self, @commonStrings.CONSTRUCTOR)
        end
        self.getFormData(hashMap)
    end
    

    def getTitle()
        return @title
    end
    

    def getFormData(hashMap)
        @title = hashMap.get(TitleData.getInstance().TEXT)
        if StringValidationUtil.getInstance().isEmpty(@title)
            @title = TitleView::NAME
        end
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(TitleData.getInstance().TEXT, self.getTitle())
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        hashMap = self.toHashMap()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("TitleView HashMap: " + hashMap.to_s, self, "toXmlNode()")
        end
        return ModDomHelper.createNameValueNodes(document, TitleData.getInstance().NAME, hashMap)
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData"

class TitleView
    NAME = "None"
end

