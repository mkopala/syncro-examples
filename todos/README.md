# Example Todo app using syncro

This is a partial implementation of the [Todo MVC](http://addyosmani.github.com/todomvc/) application using [Syncro](https://github.com/mkopala/syncro).

It adds automatic client-side persistence & client-server synchronization.

DB Initialization
-----------------

Create a `todos` database on your MongoDB server, and insert some required objects:

    make db

npm Package Install
---------------

    npm install

Run
---

    make
