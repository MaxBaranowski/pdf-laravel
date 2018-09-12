# CV Generator 🤟🏻
Application was deployed on [Heroku](https://pdf-mbar-dev.herokuapp.com/).

## Client Vue
### Client:
- [ ] Придумать каким должень быть JSON для CV;
- [ ] Придумать/сверстать черновой HTML для CV;
- [ ] Высылать JSON с данными CV;
- [ ] Придумать каким должень быть JSON для добавления изображений/текста/фигур на PDF;
- [ ] Придумать/сверстать черновой HTML для добавления изображений/текста/фигур на PDF;
- [ ] Высылать JSON с данными добавленого изображения/текста/фигуры на PDF;

## Server Laravel
### Server:
- [ ] Принимать  JSON;
- [ ] Сделать PDF из JSON; 
- [ ] Сделать HTML из JSON; 
- [ ] Разрезать PDF на количество страниц;
- [ ] Сохранить только указаные страницы PDF;
- [ ] Сделать из нескольких PDF один;
- [ ] Менять версию PDF если пришла выше 1.3;
- [ ] Механизм для добавления изображений/текста/фигур на PDF из JSON;

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
