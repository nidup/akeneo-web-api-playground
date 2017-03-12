package main

import (
    "fmt"
    "encoding/base64"
    "net/http"
    "strings"
    "log"
    "io/ioutil"
    "flag"
    "os"
)

// build: go build get_token.go
// make executable: chmod +x ./get_token
// execute: ./get_token --host http://pim-ce-17-odm.local/app_dev.php --username admin --password admin --clientid 2_1xkkvxrjku74k4ss8k44kwwsko40o08ckg488ogcosgookgo40 --secret 3ps4i6q62r6s0w88ksosso0cc8s4wcc0w4w4gcogo4gwgkkwk4

func main() {

    if len(os.Args) < 5 {
        log.Fatal("Must be used with --host, --username, --password, --clientid and --secret arguments")
    }

    host := flag.String("host", "http://pim-ce-17-odm.local/app_dev.php", "Akeneo PIM host")
    username := flag.String("username", "admin", "Akeneo PIM user's name")
    password := flag.String("password", "admin", "Akeneo PIM user's password")
    clientid := flag.String("clientid", "clientid", "Akeneo PIM web api client id")
    secret := flag.String("secret", "secret", "Akeneo PIM web api secret")
    flag.Parse()

    apiUrl := *host + "/api/oauth/v1/token"
    base64Auth := base64.StdEncoding.EncodeToString([]byte (*clientid + ":" + *secret));

    client := http.Client{}
    reader := strings.NewReader(`{"username":"`+*username+`","password":"`+*password+`","grant_type":"password"}`)
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
