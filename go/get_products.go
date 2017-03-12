package main

import (
    "fmt"
    "net/http"
    "log"
    "io/ioutil"
)

// build: go build get_products.go
// make executable: chmod +x ./get_products
// execute: ./get_products

func main() {

    apiUrl := "http://pim-ce-17-odm.local/app_dev.php/api/rest/v1/products"
    tokenType := "Bearer";
    accessToken := "ZmZhYWY2YTNmMTE0MGUwYjUyODU0YmM2NGQwODc0ODI1NjkxMWRjNjFkODkwYTE4Y2IwZmE5MDIyYWI4ZWY1NQ";
    client := http.Client{}
    req, err := http.NewRequest("GET", apiUrl, nil)
    req.Header.Add("Content-Type", "application/json")
    req.Header.Add("Authorization", tokenType + " " + accessToken)
    resp, err := client.Do(req)

    body, _ := ioutil.ReadAll(resp.Body)
    fmt.Printf(string(body))

    if err != nil {
        log.Fatal(err)
    }
}
