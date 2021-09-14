<?php

class ModelInfo {

    public $dbHost = "localhost";
    public $dbUser = "root";
    public $dbPass = "";
    public $dbName = "test";
    
    public function getSendLogInfo($fromDate,$toDate,$country,$usr) { //Task1
        
        $conn = mysqli_connect($this->dbHost,$this->dbUser,$this->dbPass,$this->dbName); 
        
        if ($conn) {
            $sql = "select date(a.log_created) as createdAt, REPLACE(count(case when a.log_success = 1 then 1 else null end),0,'-') as cntSuccess, REPLACE(count(case when a.log_success = 0 then 1 else null end),0,'-') as cntFailed
            from send_log a inner join numbers n on a.num_id = n.num_id
            where date(a.log_created) BETWEEN '" .$fromDate. "' and '" .$toDate. "'";
    
            if ($country != "-1")
                $sql .= " and n.cnt_id = " .$country;
            if ($usr != "-1")
                $sql .= " and a.usr_id = " .$usr;
    
            $sql .= " group by date(a.log_created) order by a.log_created;";    
            $result = mysqli_query($conn,$sql);
            $rowCount = mysqli_num_rows($result);
    
            if($rowCount > 0)
            {         
                return $result;
            }
        }
        else {
            echo "Database connection failed";
        }    
    }

    public function getInfo($sql) {
        
        $conn = mysqli_connect($this->dbHost,$this->dbUser,$this->dbPass,$this->dbName);
        
        if ($conn) {
            $result = mysqli_query($conn,$sql);
            $rowCount = mysqli_num_rows($result);
    
            if($rowCount > 0)
            {         
                return $result;
            }
        }
        else {
            echo "Database connection failed";
        }         
    }
} 
?>