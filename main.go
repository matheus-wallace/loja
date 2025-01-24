package main

import (
	"net/http"
	"webAppGo/routes"
)

func main() {
	routes.CarregaRotas()
	http.ListenAndServe(":8000", nil)
}
