package main

import (
    "fmt"
    "net/http"
    "log"
    "io/ioutil"
    "flag"
    "os"
    "strings"
)

// build: go build patch_product.go
// make executable: chmod +x ./patch_product
// execute a patch: ./patch_product --host http://pim-ce-17-orm.local/app_dev.php --accesstoken YmY2NzM4ZjU4ZmRiMmI4NWNkYmQ2ZWU2OGYzN2ZjY2RkNDZjMjYyZjY2NzFjZTg2NGYwZjg3ODJmYmI5OGM5MQ --identifier "michelsku" --data '{"enabled": false}'

func main() {

    if len(os.Args) < 2 {
        log.Fatal("Must be used with --host, --accesstoken, --identifier and --data arguments")
    }

    host := flag.String("host", "your host", "Akeneo PIM host")
    accessToken := flag.String("accesstoken", "your access token", "Akeneo PIM web api access token")
    identifier := flag.String("identifier", "your product identifier", "Akeneo PIM product identifier")
    data := flag.String("data", "your product data", "Akeneo PIM product data to patch")

    flag.Parse()

    apiUrl := *host + "/api/rest/v1/products/" + *identifier

    tokenType := "Bearer";

    client := http.Client{}
    reader := strings.NewReader(*data)
    req, err := http.NewRequest("PATCH", apiUrl, reader)
    req.Header.Add("Content-Type", "application/json")
    req.Header.Add("Authorization", tokenType + " " + *accessToken)
    resp, err := client.Do(req)

    body, _ := ioutil.ReadAll(resp.Body)
    fmt.Printf(string(body))

    if err != nil {
        log.Fatal(err)
    }
}
