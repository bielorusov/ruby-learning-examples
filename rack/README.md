$: - это просто сокращение для 
$LOAD_PATH . __FILE__ -это относительный путь к скрипту. 
Это добавляет текущий каталог скрипта в путь загрузки.

```ruby
$:.unshift File.dirname(__FILE__)
````