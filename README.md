# gateway-lua


在一个微服务的项目下，每个服务的IP地址和端口都是不确定的，服务越多，管理成本越高。这时我们就需要动态网关。

次项目是采用基于Openresrty的lua脚本和Redis实现的动态网关

Lua是一个没有OOP的语言，其面向对象的写法都是利用table来模拟对象

列如：

```lua
    local _M ={}
    
    function _M:action()
    
    end

    return _M
```

本项目的整体架构来自于 Nodejs 经典框架 express 的灵感。代码分为init部分 和middleware部分

init部分的代码在启动nginx的时候通过 init_by_lua_file 执行 主要是加载各个中间件方法 （注意连接redis的方法不能在这里执行，具体为什么我也忘了，去看官方文档）

middleware部分则是一个请求执行一次

