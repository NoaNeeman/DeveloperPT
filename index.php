<?php include 'includes/modelClass.php';?>
<style>
<?php include 'styleSheet.css';?>
</style>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
    </head>
    <body> 
        <!-- Task2 -->
        <?php
        $fromDateErr = $toDateErr = "";
        $fromDate = $toDate = "";
        if (!empty($_GET)) {
            if (empty($_GET["fromDate"])) {
                $fromDateErr = "This field is required.";}
            if (empty($_GET["toDate"])) {
                $toDateErr = "This field is required.";}}
        ?>
        <form class="formTest" action="index.php" method="get">
            <label>From date: </label>
            <input type="date" name="fromDate" value="">
            <span class="error">* <?php echo $fromDateErr;?></span> <br>
            <label>To date: </label>
            <input type="date" name="toDate" value="">
            <span class="error">* <?php echo $toDateErr;?></span> <br>
            <label>Country: </label>
            <select name='country'>
                <option value="-1">Choose country</option>
                <?php 
                $info = new ModelInfo();
                $sql = "select cnt_id, cnt_title from countries"; 
                $result = $info -> getInfo($sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='" . $row['cnt_id'] . "'>" . $row['cnt_title'] . "</option>";
                }
                ?>
            </select> <br>
            <label>User: </label>
            <select name='usr'>
                <option value="-1">Choose user</option>
               <?php 
               $info = new ModelInfo();
               $sql = "select usr_id,usr_name from users"; 
               $result = $info -> getInfo($sql);
               while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='" . $row['usr_id'] . "'>" . $row['usr_name'] . "</option>";
               }
               ?>
            </select> <br>
            <button type="submit" name="submit">Get info</button>
        </form>
        <?php         
        if (!empty($_GET) && !empty($_GET["fromDate"]) && !empty($_GET["toDate"])){    
            $fromDate = $_GET["fromDate"];
            $toDate = $_GET["toDate"];
            $country = $_GET["country"];
            $usr = $_GET["usr"];          
            $info = new ModelInfo();
            $result = $info -> getSendLogInfo($fromDate,$toDate,$country,$usr);
        ?>
        <table>
            <tr>
                <th>Log date</th>
                <th>Success messages</th>
                <th>Failed messages</th>
            </tr>
            <?php
            if (!empty($result)){
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr><td>" . $row['createdAt'] . "</td><td>" .$row['cntSuccess'] . "</td><td>" .$row['cntFailed']. "</td></tr>";
                }
              } 
            unset($_GET['fromDate'], $_GET['toDate'],$_GET['country'],$_GET['usr']); 
            }
           ?>
        </table> 
    </body>
</html>