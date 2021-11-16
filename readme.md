# Robot Framework Marvel

## Description
This is a example robot framework project for blog, the articles are below
- [Robot Framework - 介紹一下](https://dotblogs.com.tw/Im_sqz777/2021/10/17/191743)
- [Robot Framework - 使用 config.ini 管理環境變數](https://dotblogs.com.tw/Im_sqz777/2021/11/08/204911)
- [Robot Framework - Suite Setup V.S Test Setup](https://dotblogs.com.tw/Im_sqz777/2021/11/16/224604)

## Env setup

```
python -m pip install robotframework robotframework-requests
```

## How to Use
use this command
```
python -m robot --variable ENV:BLOG_ENV marvel.robot
```

## How to add Marvel token
- Step 1. go to https://developer.marvel.com/
- Step 2. register a account and go to https://developer.marvel.com/account
- Step 3. you will get your public key and private key
- Step 4. replace the key in config.ini
