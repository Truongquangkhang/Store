package main

import (
	"fmt"
	"os"

	"github.com/urfave/cli"
)

func main() {
	app := &cli.App{
		Name:  "greet",
		Usage: "say a greeting",
		Action: func(c *cli.Context) error {
			fmt.Println("Greetings")
			return nil
		},
	}

	app.Run(os.Args)
}

func serverAction(cli *cli.Context) error {
	return nil
}
