package handler

import "github.com/gin-gonic/gin"



func UserInfo(c *gin.Context) {
	c.JSON(200, gin.H{
		"name": "lagou",
		"uid": 123,
		"age": 34,
	})
}