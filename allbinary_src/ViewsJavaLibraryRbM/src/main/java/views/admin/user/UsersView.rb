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
# package views.admin.user

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "views/business/context/HttpContextView"

class UsersView < HttpContextView
    include DomNodeInterface
    attr_accessor :logUtil, :userVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @userVector = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    def toXmlNode(document)
        begin
            usersNode = document.createElement(UsersData::NAME)
            size = @userVector.size()
            (0...size).each do |index|
                userInterface = @userVector.get(index)
                if userInterface != nil
                    node = UserDomNode.new(userInterface).toXmlNode(document)
                    usersNode.appendChild(node)
                else
                    @logUtil.putF("UserHelper", self, "toXmlNode")
                end
            end
            return usersNode
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
autoload :UserDomNode, "org/allbinary/business/user/UserDomNode"
autoload :UsersData, "org/allbinary/business/user/UsersData"
autoload :User, "org/allbinary/business/user/modules/User"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

