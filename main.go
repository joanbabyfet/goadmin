package main

import (
	"fmt"

	_ "github.com/GoAdminGroup/go-admin/adapter/gin"
	"github.com/GoAdminGroup/go-admin/engine"
	adm "github.com/GoAdminGroup/go-admin/modules/config"
	"github.com/GoAdminGroup/go-admin/plugins/admin"
	_ "github.com/GoAdminGroup/themes/adminlte"
	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
)

func main() {

	r := gin.Default()
	fmt.Println(r.Routes())
	eng := engine.Default()

	cfg := adm.Config{
		Databases: map[string]adm.Database{
			"default": {
				Host:         "127.0.0.1",
				Port:         "3306",
				User:         "root",
				Pwd:          "root",
				Name:         "goadmin",
				Driver:       "mysql",
				MaxIdleConns: 50,
				MaxOpenConns: 150,
			},
		},
		UrlPrefix: "admin",
		Language: "en",
		Theme: "adminlte",
	}
	
	if err := eng.AddConfig(&cfg).
		AddPlugins(admin.NewAdmin()).
		Use(r); err != nil {
		panic(err)
	}

	r.Run(":9033")
}