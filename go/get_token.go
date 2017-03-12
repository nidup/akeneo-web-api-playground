package main

import (
    "fmt"
    "encoding/base64"
    "net/http"
    "strings"
    "log"
    "io/ioutil"
)

// build: go build get_token.go
// make executable: chmod +x ./get_token
// execute: ./get_token

func main() {

    username := "admin"
    password := "admin"
    apiUrl := "http://pim-ce-17-odm.local/app_dev.php/api/oauth/v1/token"
    clientId := "2_1xkkvxrjku74k4ss8k44kwwsko40o08ckg488ogcosgookgo40"
    secret := "3ps4i6q62r6s0w88ksosso0cc8s4wcc0w4w4gcogo4gwgkkwk4"
    base64Auth := base64.StdEncoding.EncodeToString([]byte (clientId + ":" + secret));

    client := http.Client{}
    reader := strings.NewReader(`{"username":"`+username+`","password":"`+password+`","grant_type":"password"}`)
    req, err := http.NewRequest("POST", apiUrl, reader)
    req.Header.Add("Content-Type", "application/json")
    req.Header.Add("Authorization", "Basic " + base64Auth)
    resp, err := client.Do(req)

    body, _ := ioutil.ReadAll(resp.Body)
    fmt.Printf(string(body))

    if err != nil {
        log.Fatal(err)
    }
}
