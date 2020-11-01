const start=document.getElementById('start-btn');
const exit=document.getElementById('exit-btn');
const question = document.getElementById('question-container');
const message=document.getElementById('mess');
const next=document.getElementById('next-btn');
const answerButtonsElement = document.getElementById('answer-buttons')
const questionElement = document.getElementById('question');
const sc=document.getElementById('score-btn');
const card=document.getElementById('score_card');
let score,currentquestion;
start.addEventListener('click',teststart);
next.addEventListener('click',()=>
{
    currentquestion++;
    setNextQuestion();
})
function teststart(){

  question.classList.remove('hide');
  shuffledQuestions = questions.sort(() => Math.random() - .5)
  currentquestion=0;
  score=0;
   message.classList.add('hide');
   next.classList.remove('hide');
   setNextQuestion();
}
function setNextQuestion() {
    resetState();
    showquestion(shuffledQuestions[currentquestion])
  }

  function showquestion(ques)
{
     questionElement.innerText = ques.question;
     ques.answers.forEach(answer=>{
         const button=document.createElement('button');
         button.innerText=answer.text;
         button.classList.add('btn');
         if(answer.correct)
         {
             button.dataset.correct=answer.correct;
         }
         button.addEventListener('click', selectanswer)
         answerButtonsElement.appendChild(button)
     })
}
function resetState() {
    //clearStatusClass(document.body)
    next.classList.add('hide')
    while (answerButtonsElement.firstChild) {
      answerButtonsElement.removeChild(answerButtonsElement.firstChild)
    }
  }
function selectanswer(e)
{
    const answer=e.target;
    const correct=answer.dataset.correct;
    answer.classList.add('btn1')
    console.log(answer.dataset.correct);
    if(answer.dataset.correct=="true")
    score++;
   /*Array.from(answerButtonsElement.children).forEach(button => {
        if(button.dataset.correct)
        {
        score++;
        console.log(button.dataset.correct);
        }
      })*/

      if (shuffledQuestions.length > currentquestion + 1) {
        next.classList.remove('hide')
      } else {
        
        exit.classList.remove('hide')
      }

}
exit.addEventListener('click',scorecard);
function scorecard()
{
    question.classList.add('hide');
    exit.classList.add('hide');
    card.classList.remove('hide');
    sc.innerText=Number(score)+"/"+Number(4);
    
}










const questions = [
    {
      question: 'What is 2 + 2?',
      answers: [
        { text: '4', correct: "true" },
        { text: '22', correct: "false" }
      ]
    },
    {
      question: 'Who is the best YouTuber?',
      answers: [
        { text: 'Web Dev Simplified', correct: "false" },
        { text: 'Traversy Media', correct: "false" },
        { text: 'Dev Ed', correct: "true"},
        { text: 'Fun Fun Function', correct: "false"}
      ]
    },
    {
      question: 'Is web development fun?',
      answers: [
        { text: 'Kinda', correct: "true" },
        { text: 'YES!!!', correct: "false" },
        { text: 'Um no', correct: "false" },
        { text: 'IDK', correct: "false" }
      ]
    },
    {
      question: 'What is 4 * 2?',
      answers: [
        { text: '6', correct: "false" },
        { text: '8', correct: "true" }
      ]
    }
  ]