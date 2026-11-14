# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.business.user.role


class BasicUserRoles
    attr_accessor :roleVector

    def initialize_fields
        @roleVector = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BasicUserRoles.instance
    end
    

    # throws Exception
    def getRole(role)
        roleVector = self.getAll()
        size = roleVector.size()
        (0...size).each do |index|
            userRole = roleVector.get(index)
            if (role <=> userRole.to_s) == 0
                return userRole
            end
        end
        raise StandardError.new("Unable to get role - Unknown Role")
    end
    

    def getAll()
        return @roleVector
    end

    def self.instance()
        BasicUserRoles.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicUserRoles.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicUserRoles.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicUserRoles"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicUserRole, "org/allbinary/business/user/role/BasicUserRole"

begin
    BasicUserRoles.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

