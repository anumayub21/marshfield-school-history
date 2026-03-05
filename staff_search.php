<?php
error_reporting(E_ALL); 
// Turn on all error messages (very helpful while building/testing)

ini_set('display_errors', 1); 
// Show errors on the screen

$conn = new mysqli("127.0.0.1", "root", "", "marshfield_app", 3306);
// Connect to the database
// 127.0.0.1 = your own computer
// root = database username
// "" = password (empty here)
// marshfield_app = database name
// 3306 = database port number

if ($conn->connect_error) { 
    // If the connection fails
    die("DB connection failed: " . $conn->connect_error);
    // Stop everything and show the error
}

$SchoolName = $_GET['SchoolName'] ?? '';
// Get SchoolName from the form
// If nothing is chosen, use empty value

$Dept       = $_GET['Dept'] ?? '';
// Get Department from the form

$LastName   = $_GET['LastName'] ?? '';
// Get Last Name typed by the user

$Position   = $_GET['Position'] ?? '';
// Get Position selected by the user

$StartYear  = $_GET['StartYear'] ?? '';
// Get Start Year typed by the user

$sql = "
SELECT
  `School Name`      AS school,
  `Dept`             AS dept,
  `Title`            AS title,
  `First Name`       AS first_name,
  `Last Name`        AS last_name,
  `Position`         AS position,
  `Year name recorded` AS start_year,
  `Left School`      AS left_school,
  `Notes`            AS notes
FROM `staff_db`

WHERE
  `School Name` LIKE '%$SchoolName%' AND
  `Dept` LIKE '%$Dept%' AND
  `Last Name` LIKE '%$LastName%' AND
  `Position` LIKE '%$Position%' AND
  `Year name recorded` LIKE '%$StartYear%'
";
// This is the SQL query
// SELECT = choose which columns to show
// AS means rename the column to something shorter
// FROM staff_db = use the staff_db table
// LIKE '%value%' means search for anything containing that word
// % means "anything before or after"

$result = $conn->query($sql);
// Send the SQL query to the database

if (!$result) {
    // If the query fails
    die("<h3>SQL ERROR:</h3><pre>" . $conn->error . "</pre>");
    // Show the error and stop
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Staff Search Results</title>
  <!-- Name shown on browser tab -->
  <link rel="stylesheet" href="style.css">
  <!-- Connect page to CSS for styling -->
</head>
<body>

<div class="header">
  <!-- Top section of page -->
  <h1>Marshfield School History</h1>
</div>

<div class="nav">
  <!-- Navigation menu -->
  <a href="#">About</a>
  <a href="#">Chapel Green Board School</a>
  <a href="#">Thornton Lane Board School</a>
  <a href="#">Marshfield School</a>
  <a href="page5_staff.html" class="active">Staff Database</a>
  <!-- class="active" usually highlights current page -->
</div>

<div class="container">
<h2>Search Results</h2>
<p><a href="page5_staff.html">← Back</a></p>
<!-- Link to go back to search form -->

<?php if ($result->num_rows > 0): ?>
<!-- If database returned rows -->

<table>
<tr>
  <th>School</th>
  <th>Dept</th>
  <th>Title</th>
  <th>First</th>
  <th>Last</th>
  <th>Position</th>
  <th>Year</th>
  <th>Left</th>
  <th>Notes</th>
</tr>
<!-- Table headers -->

<?php while ($row = $result->fetch_assoc()): ?>
<!-- Loop through each row one by one -->

<tr>
  <td><?= htmlspecialchars($row['school']) ?></td>
  <!-- Print school name safely -->

  <td><?= htmlspecialchars($row['dept']) ?></td>
  <!-- Print department safely -->

  <td><?= htmlspecialchars($row['title']) ?></td>
  <!-- Print title safely -->

  <td><?= htmlspecialchars($row['first_name']) ?></td>
  <!-- Print first name safely -->

  <td><?= htmlspecialchars($row['last_name']) ?></td>
  <!-- Print last name safely -->

  <td><?= htmlspecialchars($row['position']) ?></td>
  <!-- Print position safely -->

  <td><?= htmlspecialchars($row['start_year']) ?></td>
  <!-- Print start year safely -->

  <td><?= htmlspecialchars($row['left_school']) ?></td>
  <!-- Print left school year safely -->

  <td><?= htmlspecialchars($row['notes']) ?></td>
  <!-- Print notes safely -->
</tr>

<?php endwhile; ?>
<!-- End of loop -->

</table>

<?php else: ?>
<p><strong>No results found.</strong></p>
<!-- If nothing matched search -->
<?php endif; ?>

</div>

<div class="footer">
Community History Research by Ray Greenhough
<!-- Bottom text -->
</div>

</body>
</html>

<?php $conn->close(); ?>
<!-- Close the database connection -->