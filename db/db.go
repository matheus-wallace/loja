package db

import (
	"database/sql"

	_ "github.com/lib/pq"
)

func ConectaComOBancoDeDados() *sql.DB {
	conexao := "user=admin dbname=loja password=admin123 host=localhost sslmode=disable"
	db, err := sql.Open("postgres", conexao)

	if err != nil {
		panic(err.Error())
	}

	return db
}
