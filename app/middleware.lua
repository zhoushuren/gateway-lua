--
-- Created by IntelliJ IDEA.
-- User: zhoujun
-- Date: 8/9/17
-- Time: 23:50
-- To change this template use File | Settings | File Templates.
--

local _M = {
    middlewares = {}
}

function _M:use(middleware)
    self.middlewares[middleware.name] = middleware
end

function _M:init()
    for k, v in pairs(self.middlewares) do
        if v.init then v:init() end
    end
end

function _M:access()
    for k, v in pairs(self.middlewares) do
        if v.access then v:access() end
    end
end

function _M:bodyFilter()
    for k, v in pairs(self.middlewares) do
        if v.bodyFilter then v:bodyFilter() end
    end
end

function _M:content()
    for k, v in pairs(self.middlewares) do
        if v.content then v:content() end
    end
end

function _M:log()
    for k, v in pairs(self.middlewares) do
        if v.log then v:log() end
    end
end

return _M

