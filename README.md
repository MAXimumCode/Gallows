Игра "Виселица"
==============

автор: Максим Козаев

Игра загадывает слово, игрок должен его отгадать. Количество попыток ограничено.
[подробнее](https://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0))

Принцип работы программы
------------------------

Программа берет случайное слово из файла **`/data/words.txt`**. В фаил можно записать свои слова.
Пользователю предлагается по буквам угадать слово. При каждой неудачной попытки, дорисовывается 
новый фрагмент виселицы из файлов в папке **`/image`**. При 7 неудачных попытках, защитывается поражение.

Установка и запуск
-------------------
Для запуска игры вам необходим [Ruby](https://www.ruby-lang.org/en/) версии не ниже 2.4.0

Команда для запуска: **`ruby main_gallows.rb`**

Внешний вид игры:
-----------------
```
Слово: __ а д а __ __ а

Ошибки: у, с, п, о, л

          _______
          |/
          |     ( )
          |     _|_
          |    / | \
          |      |
          |
          |
          |
        __|________
        |         |

У вас осталось ошибок: 2

Введите следующую букву

```
