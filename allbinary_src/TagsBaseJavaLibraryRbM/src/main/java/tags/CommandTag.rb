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
# package tags

require "tags/CustomTagSupport"

class CommandTag < CustomTagSupport
    attr_accessor :tagStrings, :command

    def initialize_fields
        @tagStrings = TagStrings.getInstance()
        @command = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setCommand(command)
        @command = command
    end
    

    def getCommand()
        return @command
    end
end

autoload :TagStrings, "tags/TagStrings"

