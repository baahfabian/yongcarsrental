<?php
  class DB {
          // public static $host;
          // public static $dbName;
          // public static $username;
          // public static $password;

          // for  release
          // public static $host = "localhost";
          // public static $dbName = "serverDBNAME";
          // public static $username = "SERVERDBUSER";
          // public static $password = "SERVERDBPASS";

          // for development
          public static $host = "localhost";
          public static $dbName = "yongcars_db";
          public static $username = "root";
          public static $password = "";

    private static function connect() {
            $pdo = new PDO("mysql:host=".self::$host.";dbname=".self::$dbName.";charset=utf8", self::$username, self::$password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
    }

    public static function query($query, $params = array()) {
              $statement = self::connect()->prepare($query);
              $statement->execute($params);

              if (explode(' ', $query)[0] == 'SELECT') {
              $data = $statement->fetchAll();
              return $data;
              }
      }

    public static function count($query, $params = array()) {
            $statement = self::connect()->prepare($query);
            $statement->execute($params);

            $data = $statement->rowCount();
            return $data;

    }

  }
