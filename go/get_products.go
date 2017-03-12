package main

import (
    "fmt"
    "net/http"
    "log"
    "io/ioutil"
    "flag"
    "os"
)

// build: go build get_products.go
// make executable: chmod +x ./get_products
// execute: ./get_products --host http://pim-ce-17-odm.local/app_dev.php --accesstoken YzE2Mjc1NzkxMWUwOGFmMjRiNDJmYzcyYTZlODY1OWNkOWEwMjE4ODY5ZTU1YmNkMzEzZjE3ZDhlZDczNDRhNA

func main() {

    if len(os.Args) < 2 {
        log.Fatal("Must be used with --host and --accesstoken arguments")
    }

    host := flag.String("host", "http://pim-ce-17-odm.local/app_dev.php", "Akeneo PIM host")
    accessToken := flag.String("accesstoken", "accesstoken", "Akeneo PIM web api access token")
    flag.Parse()

    apiUrl := *host + "/api/rest/v1/products"
    tokenType := "Bearer";

    client := http.Client{}
    req, err := http.NewRequest("GET", apiUrl, nil)
    req.Header.Add("Content-Type", "application/json")
    req.Header.Add("Authorization", tokenType + " " + *accessToken)
    resp, err := client.Do(req)

    body, _ := ioutil.ReadAll(resp.Body)
    fmt.Printf(string(body))

    if err != nil {
        log.Fatal(err)
    }
}
