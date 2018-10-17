<?php
function connectDb()
{
    $server = '127.0.0.1';
    $pseudo = 'root';
    $pwd = '';
    $dbname = 'ee_stagiaires';

    static $db = null;

    if ($db === null)
    {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $db = new PDO("mysql:host=$server;dbname=$dbname", $pseudo, $pwd, $pdo_options);
        $db->exec('SET CHARACTER SET utf8');
    }
    return $db;
}

function getStagiaires(){
   try {
       $db = connectDb();
       $sql = "SELECT idStagiaire, nom, prenom, email, noTel, ecole, degre FROM stagiaires";

       $request = $db->prepare($sql);
       if ($request->execute()) {
           $result = $request->fetchAll(PDO::FETCH_ASSOC);
           return $result;
       } else {
           return NULL;
       }
   } catch (Exception $e) {
       echo $e->getMessage();
       return $e;
   }
 }
