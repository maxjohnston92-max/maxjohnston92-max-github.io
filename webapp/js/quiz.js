// ---------------------------
// Cyber Security Quiz Script
// ---------------------------

// Quiz questions
const questions = [
    {
        question: "What is phishing?",
        options: [
            "A cyber attack that tricks users into giving information",
            "A type of firewall",
            "A secure login method",
            "A password manager"
        ],
        answer: 0
    },
    {
        question: "What is the strongest password?",
        options: [
            "Password123",
            "Your pet's name",
            "A long random mix of characters",
            "Your birthday"
        ],
        answer: 2
    },
    {
        question: "What does 2FA stand for?",
        options: [
            "Two-Factor Authentication",
            "Two-Firewall Access",
            "Fast File Access",
            "Two-Folder Authorization"
        ],
        answer: 0
    },
    {
        question: "Which of these is malware?",
        options: [
            "A VPN",
            "A computer virus",
            "A browser extension",
            "A Wi-Fi password"
        ],
        answer: 1
    }
];

let currentQuestion = 0;
let score = 0;

// Load the quiz
function loadQuiz() {
    const container = document.getElementById("quiz-container");

    if (currentQuestion >= questions.length) {
        showResults();
        return;
    }

    const q = questions[currentQuestion];

    container.innerHTML = `
        <h2>Question ${currentQuestion + 1} of ${questions.length}</h2>
        <p>${q.question}</p>

        <div id="options">
            ${q.options.map((opt, index) => `
                <button class="option-btn" onclick="checkAnswer(${index})">${opt}</button>
            `).join("")}
        </div>

        <p>Score: ${score}</p>
    `;
}

// Check answer
function checkAnswer(selected) {
    if (selected === questions[currentQuestion].answer) {
        score++;
    }

    currentQuestion++;
    loadQuiz();
}
function saveScoreToServer() {
    console.log("saveScoreToServer() CALLED with score =", score);
    fetch("SaveScoreServlet", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: "score=" + score
    });
}
// Show final results
function showResults() {
    const container = document.getElementById("quiz-container");
    saveScoreToServer();

    container.innerHTML = `
        <h2>Quiz Complete!</h2>
        <p>Your final score is: <strong>${score} / ${questions.length}</strong></p>

        <button onclick="restartQuiz()">Restart Quiz</button>
        <button onclick="window.location.href='home.jsp'">Return Home</button>
    `;
}


// Restart
function restartQuiz() {
    currentQuestion = 0;
    score = 0;
    loadQuiz();
}

// Start quiz on page load
window.onload = loadQuiz;
