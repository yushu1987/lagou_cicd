package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"github.com/yushu1987/lagou_cicd/cmd/handler"

	"runtime"
)

// AppVersion name
var AppVersion = "unknown"


func main() {
	println("Hello", "菜鸟实战")
	println("实战场景: ", "如何安装和使用 gin")

	// 初始化
	r := gin.Default()

	// 添加路由和回调
	r.GET("/ping", func(c *gin.Context) {
		// 返回的 code 和 对应的结构体信息
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})
	r.GET("/userinfo", handler.UserInfo)

	// 使用包函数打印
	fmt.Printf("版本: %s \n", runtime.Version())

	// 启动框架程序, 默认 8080 端口
	r.Run()
}
