<?php
include 'db_connect.php';

if (!isset($_POST['answer'])) {
    header("Location: quiz.php");
    exit();
}

$answers = $_POST['answer'];
$level = $_POST['level'];
$score = 0;
$total = 0;
$results = [];

$query = "SELECT * FROM questions WHERE level='$level' ORDER BY id ASC LIMIT 10";
$result = $conn->query($query);

while ($row = $result->fetch_assoc()) {
    $total++;
    $userAnswer = isset($answers[$row['id']]) ? $answers[$row['id']] : 'Not answered';
    $isCorrect = ($userAnswer == $row['correct_answer']);
    if ($isCorrect) $score++;
    $results[] = [
        'question' => $row['question'],
        'user' => $userAnswer,
        'correct' => $row['correct_answer'],
        'status' => $isCorrect
    ];
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Quiz Results</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="quiz-container">
        <h1>Results - <?php echo ucfirst($level); ?> Level</h1>
        <h2>Your Score: <?php echo "$score / $total"; ?></h2>

        <div class="results">
            <?php foreach ($results as $index => $res): ?>
                <div class="result-card <?php echo $res['status'] ? 'correct' : 'wrong'; ?>">
                    <h3>Question <?php echo $index + 1; ?>:</h3>
                    <p><?php echo $res['question']; ?></p>
                    <p><strong>Your Answer:</strong> <?php echo $res['user']; ?></p>
                    <p><strong>Correct Answer:</strong> <?php echo $res['correct']; ?></p>
                </div>
            <?php endforeach; ?>
        </div>

        <a href="quiz.php?level=<?php echo $level; ?>" class="btn">Try Again</a>
        <a href="quiz.php" class="btn">Back to Levels</a>
    </div>
</body>
</html>
