// ----- HOME PAGE SCRIPT -----

// Build the homepage layout
function loadHomePage() {
    const app = document.getElementById("app");
    app.innerHTML = `
<link rel="stylesheet" type="text/css" href="css/stylev3.css">
        <div class="home-container">
            <h1>Cybersecurity Quiz</h1>
            <p>Test your knowledge and track your score!</p>

            <button id="startQuizBtn" class="btn">Start Quiz</button>
            <button id="scoresBtn" class="btn">View High Scores</button>
            <button id="instructionsBtn" class="btn">Instructions</button>
        </div>
    `;

    // Button actions
    document.getElementById("startQuizBtn").onclick = () => {
        console.log("Start quiz clicked");
        window.location.href = "quiz.jsp";
    };


    document.getElementById("scoresBtn").onclick = () => {
        console.log("View scores clicked");
        loadScoresPage(); // Replace with your scores page
    };


}

// Placeholder functions (replace with your real pages)
function loadQuizPage() {
    document.getElementById("app").innerHTML = "<h2>Quiz Page Coming Soon...</h2>";
}

function loadScoresPage() {
    document.getElementById("app").innerHTML = "<h2>High Scores Coming Soon...</h2>";
}



// Load homepage on startup
window.onload = loadHomePage;
