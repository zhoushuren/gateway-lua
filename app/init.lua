--
-- Created by IntelliJ IDEA.
-- User: zhoujun
-- Date: 8/9/17
-- Time: 20:52
-- To change this template use File | Settings | File Templates.
--

globalConfig = require "config"
middlewares = require "middleware"
json = require "cjson"

local check_router = require "check_router"
local check_auth = require "check_auth"

middlewares:use(check_router)
middlewares:use(check_auth)

middlewares:init()