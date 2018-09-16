# CV Generator 🤟🏻
Application was deployed on [Heroku](https://pdf-mbar-dev.herokuapp.com/).

## Client Vue
### Client:
- [ ] Придумать каким должень быть JSON для CV;
- [ ] Придумать/сверстать черновой HTML для CV;
- [x] Придумать каким должень быть JSON для PDF;
- [ ] Придумать/сверстать черновой HTML для загрузки PDF;
- [ ] Придумать каким должень быть JSON для добавления изображений/текста/фигур на PDF;
- [ ] Придумать/сверстать черновой HTML для добавления изображений/текста/фигур на PDF;

## Server Laravel
### Server:
- [ ] Принимать JSON;
- [ ] Сделать PDF из JSON; 
- [ ] Сделать HTML из JSON; 
- [ ] Разрезать PDF на количество страниц;
- [ ] Сохранить только указаные страницы PDF;
- [ ] Сделать из нескольких PDF один;
- [ ] Менять версию PDF если пришла выше 1.3;
- [ ] Механизм для добавления изображений/текста/фигур на PDF из JSON;

## JSON
##### Load file via API:
```javascript
{
    "data": {
        "1": "file", // file in base64 string
        ...
        "n": "file"
    },
    "userID": "",
    "format": "file",
    "url": "/doSmth"
}
```
##### Load file from Client Side:
Load file only via "File Upload" in Laravel.

#### Server:
##### Server Request:
```javascript
{
    "userID": "", //user token
    "url": "/doSmth"
}
```

##### Server Response:
`Server will return only filename of file(s) which stores somewhere on server, and crypted for only for special user`
```javascript
{
    "data": {
        "1": "filename",
        ...
        "n": "filename"
    }
}
```



##### Actions:
```javascript
{
    "data": {
        "1": "filename_1", // filename string
        ...
        "n": "filename_2"
    },
    "userID": "",
    "format": "filename",
    "url": "/doSmth",
    "action": "slice/merge/add",
    "params": "" //?
}
```

## Examples 
### Getting values from fields
```javascript
// smth like this
let formData = JSON.stringify($("#form").serializeArray());

$.ajax({
  type: "POST",
  url: "url",
  data: formData,
  success: function(){},
  dataType: "json",
  contentType : "application/json"
});
```
