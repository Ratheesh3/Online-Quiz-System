<?php
include 'db_connect.php';

$level = isset($_GET['level']) ? $_GET['level'] : 'easy';
$query = "SELECT * FROM questions WHERE level='$level' ORDER BY id ASC LIMIT 10";
$result = $conn->query($query);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Online Quiz - <?php echo ucfirst($level); ?> Level</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="quiz-container">
        <h1>Quiz - <?php echo ucfirst($level); ?> Level</h1>

        <form action="result.php" method="POST">
            <?php
            $qnum = 1;
            while ($row = $result->fetch_assoc()):
            ?>
            <div class="question-card">
                <h3>Question <?php echo $qnum++; ?>:</h3>
                <p><?php echo $row['question']; ?></p>
                <div class="options">
                    <?php foreach (['a', 'b', 'c', 'd'] as $opt): ?>
                        <label>
                            <input type="radio" name="answer[<?php echo $row['id']; ?>]" value="<?php echo $row['option_'.$opt]; ?>" required>
                            <?php echo $row['option_'.$opt]; ?>
                        </label><br>
                    <?php endforeach; ?>
                </div>
            </div>
            <?php endwhile; ?>

            <input type="hidden" name="level" value="<?php echo $level; ?>">
            <button type="submit" class="submit-btn">Submit Quiz</button>
        </form>

        <div class="level-buttons">
            <a href="quiz.php?level=easy" class="btn">Easy</a>
            <a href="quiz.php?level=medium" class="btn">Medium</a>
            <a href="quiz.php?level=hard" class="btn">Hard</a>
        </div>
    </div>
</body>
</html>
