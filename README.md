# README

Решаем тестовое задание, но, дополнительно используем `FactoryGirl` и
`RSpec`. Также задействованы `Zeus` и `Guard`.

20170523

# Задание

Create a route to be able to display pages with different information 
about different types of beer. The route should recognize URL paths 
like `/beer/<beer_type>` and should use the same controller action 
for each type of beer with the actually beer type passed into 
the controller action as a parameter. The valid beer types are:

* IPA
* brown_ale
* pilsner
* lager
* lambic
* hefeweizen

Any other type of beer specified should generate a 404 status code.

# Как проверить

```
$ bundle
$ guard start
# затем в консоли guard выполнить `zeus test`
```

# Возникшие вопросы (google)

* 'rspec response body empty' -> https://stackoverflow.com/a/1065354
* 'rspec fill the database before testing' -> https://stackoverflow.com/a/36063078
* 'create multiple records Factory Girl' -> https://stackoverflow.com/a/17220596
* 'rspec clean database state' -> https://stackoverflow.com/a/21323315
* https://github.com/DatabaseCleaner/database_cleaner
* 'rails render 404' -> https://stackoverflow.com/a/4983354

# Также пригодились мануалы:

Factory girl - getting started:
https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md

RSpec Cheatsheet:
https://gist.github.com/eliotsykes/5b71277b0813fbc0df56