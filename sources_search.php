<?php
error_reporting(E_ALL); // Turn on all error messages (helps during development)
ini_set('display_errors', 1); // Show errors on the screen

$conn = new mysqli("127.0.0.1","root","","marshfield_app",3306); 
// Connect to the database
// 127.0.0.1 = local computer
// root = database username
// "" = password (empty here)
// marshfield_app = database name
// 3306 = database port number

if ($conn->connect_error) { // If connection fails
    die("DB connection failed: " . $conn->connect_error); 
    // Stop the page and show error message
}

$School     = $conn->real_escape_string($_GET['School'] ?? ''); 
// Get the School value from the form (URL)
// ?? '' means if nothing is selected, use empty value
// real_escape_string protects against SQL injection

$SourceType = $conn->real_escape_string($_GET['SourceType'] ?? ''); 
// Get the SourceType value from the form
// Also protected for security

$sql = "
SELECT `Source`, `Source type`, `School`, `Department`, `Notes`, `Hyperlink`
FROM `sources`
WHERE `School` LIKE '%$School%'
  AND `Source type` LIKE '%$SourceType%'
";
// This is the SQL query
// SELECT = choose columns to display
// FROM sources = from the sources table
// LIKE '%value%' means search for anything containing that word
// % means anything before or after

$result = $conn->query($sql); 
// Send the SQL query to the database

if(!$result){ // If query fails
    die("SQL ERROR: " . $conn->error); 
    // Stop and show SQL error
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Sources Results</title> <!-- Browser tab name -->
  <link rel="stylesheet" href="style.css"> <!-- Connect to CSS file -->
</head>
<body>

<div class="header"> <!-- Top part of page -->
  <h1>Marshfield School History</h1>
</div>

<div class="nav"> <!-- Navigation menu -->
  <a href="index.html">About</a>
  <a href="page2.html">Chapel Green Board School</a>
  <a href="page3.html">Thornton Lane Board School</a>
  <a href="page4.html">Marshfield School</a>
  <a href="page5_staff.html">Staff Database</a>
  <a href="page6_sources.html" class="active">Sources Database</a> 
  <!-- class="active" usually highlights the current page -->
</div>

<div class="container">
  <h2>Sources Search Results</h2>
  <p><a href="page6_sources.html">← Back</a></p> 
  <!-- Link to go back to search page -->

<?php if($result->num_rows > 0): ?> 
<!-- If database returned rows -->

  <table border="1"> <!-- Start table -->
    <tr> <!-- Table header row -->
      <th>Source</th>
      <th>Type</th>
      <th>School</th>
      <th>Department</th>
      <th>Notes</th>
      <th>Open</th>
    </tr>

    <?php while($row = $result->fetch_assoc()): ?> 
    <!-- Loop through each result row one by one -->

      <tr> <!-- Start new table row -->

        <td><?= htmlspecialchars($row['Source']) ?></td>
        <!-- Print Source safely (prevents hacking) -->

        <td><?= htmlspecialchars($row['Source type']) ?></td>
        <!-- Print Source type safely -->

        <td><?= htmlspecialchars($row['School']) ?></td>
        <!-- Print School safely -->

        <td><?= htmlspecialchars($row['Department'] ?? '') ?></td>
        <!-- Print Department (if empty, show nothing) -->

        <td><?= htmlspecialchars($row['Notes'] ?? '') ?></td>
        <!-- Print Notes (if empty, show nothing) -->

        <td>
          <?php if(!empty($row['Hyperlink'])): ?> 
          <!-- If there is a hyperlink -->

            <a href="<?= htmlspecialchars($row['Hyperlink']) ?>" target="_blank">View</a>
            <!-- Open link in new tab -->

          <?php else: ?> 
            Not available 
            <!-- If no link exists -->
          <?php endif; ?>
        </td>

      </tr>

    <?php endwhile; ?> 
    <!-- End of loop -->

  </table>

<?php else: ?> 
  <p><strong>No results found.</strong></p> 
  <!-- If nothing matched search -->
<?php endif; ?>

</div>

<div class="footer"> <!-- Bottom of page -->
  Community History Research by Ray Greenhough
</div>

</body>
</html>

<?php $conn->close(); ?> 
<!-- Close the database connection -->