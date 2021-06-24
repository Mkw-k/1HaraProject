<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>왜들어왓니????</title>

<style type="text/css">
:root {
  --color:white;
}

body {
  font-family:sans-serif;
  font-size:10px;  
  text-align:center;
  color:gray;
  background:linear-gradient(to bottom right, #555 50%, #333 50%), linear-gradient(to bottom left, #555 50%, #333 50%);
  background-blend-mode:multiply;
  min-height:100vh; 
  overflow:hidden;
}

#container {
  width:400px;
  height:400px;
  position:absolute;
  left:50%;
  top:50%;
  transform:translate(-50%,-50%);
  perspective:400px;
  background:#222;
  box-shadow:0 0 50px black;
}
#container:after {
  content:'일하라 히든게임 제작자 : 우정현';
  width:100%;
  text-align:center;
  font-size:10px;
  letter-spacing:1px;
  color:gray;
  position:absolute;
  top:0;
  left:0;
  transform:translateY(-200%);
  z-index:-1;
}
#maze_box {
  width:100%;
  height:100%;
  background-size:30px 30px;
  font-size:0;
}

#tracker {
  width:1px;
  height:1px;
/*   background:red; */
  position:absolute;
  left:50%;
  top:50%;
}

#ball {
  width:24px;
  height:24px;
  background:var(--color);
  background-image:url('정우볼.png');
  border-radius:50%;
  position:absolute;
  left:calc(50%);
  top:calc(50%);  
  text-align:center;
  font-size:10px;
  line-height:15px;
  color:#222;
}

#ball:after {
  content:'';
  width:100%;
  height:100%;
  position:absolute;
  left:0;
  top:0;
  border-radius:50%;
  box-sizing:border-box;
  border:1px solid var(--color);
  animation:pulse 1.5s linear infinite;
}
@keyframes pulse {
  0% { transform:scale(1); }
  100% { transform:scale(2); opacity:0; }
}

.block {
  width:5%;
  height:5%;
  display:inline-block;
  font-size:10px;
}

.wall {
  background:var(--color);
}

#end {
  width:40px;
  height:40px;
  background:linear-gradient(to bottom right, transparent 4.5px, var(--color) 4.5px, var(--color) 5.5px, transparent 5.5px);
  background-size:10px 10px;
  position:absolute;
  font-size:24px;
  text-align:center;
  line-height:40px;
  color:black;
}
</style>

</head>
<body>

<div id='container'>
  <div id='maze_box'>
    <div id='end'></div>
    <div id='ball'></div>      
  </div>  
  <div id='tracker'></div>  
</div>


<script type="text/javascript">
var maze_box = document.getElementById('maze_box')
var tracker = document.getElementById('tracker')
var ball = document.getElementById('ball')
var end = document.getElementById('end')

// moving the maze and ball functions
var tracker_x = 50
var tracker_y = 50
var move_speed = 5
var d= {}

var ball_x = 40;
var ball_y = 40;

ball.style.left = ball_x + 'px'
ball.style.top = ball_y + 'px'

function changeColor() {
  var root = document.documentElement;
  var color = Math.floor(Math.random()*360)  
  root.style.setProperty('--color', "hsl("+color+"deg,100%,60%)");  
}

var level_count = 0
var levels = [ 
  {
    end_x:340,
    end_y:340,
    layout: [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
  },
  {
    end_x:340,
    end_y:240,
    layout: [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
             1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,
             1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,1,
             1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
             1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
  },
  {
    end_x:20,
    end_y:20,
    layout: [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,1,1,1,1,1,1,1,1,0,0,0,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,0,0,0,1,1,1,1,1,1,1,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
  },
  {
    end_x:260,
    end_y:260,
    layout: [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,0,1,
             1,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,1,0,1,0,0,0,1,1,1,1,1,1,1,1,1,1,
             1,0,0,0,1,0,0,1,1,1,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,1,1,1,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
  },
  {
    end_x:20,
    end_y:20,
    layout: [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
             1,0,0,0,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,
             1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,1,0,1,1,1,
             1,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,1,1,
             1,0,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,1,
             1,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,
             1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,1,
             1,1,0,0,0,0,0,1,1,0,1,1,0,0,0,1,0,0,0,1,
             1,1,1,0,0,0,1,1,0,0,0,1,1,0,1,1,0,0,0,1,
             1,1,0,0,0,1,1,0,0,0,0,0,1,1,1,1,0,0,0,1,
             1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,1,
             1,0,0,1,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,1,
             1,0,1,1,0,0,0,0,1,1,1,0,0,0,0,1,0,0,0,1,
             1,1,1,0,0,0,0,1,1,0,1,1,0,0,0,1,0,0,0,1,
             1,1,0,0,0,0,1,1,0,0,0,1,1,0,0,1,0,0,0,1,
             1,0,0,0,0,1,1,0,0,0,0,0,1,1,1,1,0,0,0,1,
             1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,
             1,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,1,
             1,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,
             1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
  },
]    
// console.log(levels.length)

// adding the walls
var walls = []
function newMaze() {
  changeColor()
  if(document.getElementsByClassName('block')) {
    var blocks = document.querySelectorAll('.block')
    blocks.forEach(function(elm){
      elm.remove()
    })
    ball.innerHTML = level_count + 1
  }

  for(var i=0;i<400;i++) {
    var block = document.createElement('div')
    block.className =  levels[level_count].layout[i] == 1 ? 'block wall ' : 'block'
    if(levels[level_count].layout[i] == 1 ) { walls.push(i) }
    maze_box.appendChild(block)
  }  

  end.style.left = levels[level_count].end_x + 'px'
  end.style.top = levels[level_count].end_y + 'px'
  // console.log(walls)

  function moveMaze(e) {
    window.addEventListener('keydown', function(e) { d[e.which] = true; });
    window.addEventListener('keyup', function(e) { d[e.which] = false; });

    var tracker_loc = tracker.getBoundingClientRect()
    if(d[37] && tracker_x > 1) {
      tracker_x -= move_speed
    }
    if(d[39] && tracker_x < 99) {
      tracker_x += move_speed
    }
    if(d[38] && tracker_y > 1) {
      tracker_y -= move_speed
    }
    if(d[40] && tracker_y < 99) {
      tracker_y += move_speed
    }
    if(d[32]) {
      tracker_x = 50
      tracker_y = 50
    }

    var rx = tracker_x < 50 ? -(1-(tracker_x/50))*15 : (1-(50/tracker_x))*2*15 ;
    var ry = tracker_y < 50 ? -(1-(tracker_y/50))*15 : (1-(50/tracker_y))*2*15 ;
    maze_box.style.transform = 'rotateX('+(-ry)+'deg) rotateY('+rx+'deg)'

    var bx = rx/4
    var by = ry/4  
    var ball_x_one = Math.floor((ball_x +15)/20)
    var ball_x_two = Math.floor((ball_x)/20)
    var ball_y_one = Math.floor((ball_y)/20)*20
    var ball_y_two = Math.floor((ball_y)/20)*20
    var ball_blocks = [...new Set([ball_x_one + ball_y_one - 1,ball_x_two + ball_y_one + 1,ball_x_one + ball_y_two - 20,ball_x_two + ball_y_two + 20])]
    ball_blocks.forEach(function(elm){

    })  

    if(tracker_x < 48 && ball_x + bx > 0 && !walls.includes(ball_blocks[0])) {
      ball_x += bx
      ball.style.left = ball_x + 'px'
    } else if(tracker_x > 52 && ball_x + bx < 385 && !walls.includes(ball_blocks[1])) {
      ball_x += bx
      ball.style.left = ball_x + 'px'
    } 

    if(tracker_y < 48 && ball_y - by > 0 && !walls.includes(ball_blocks[2])) {
      ball_y += by
      ball.style.top = ball_y - 15  + 'px'
    } else if(tracker_y > 52 && ball_y - by < 385 && !walls.includes(ball_blocks[3])) {
      ball_y += by
      ball.style.top = ball_y + 'px'
    }  

    // check for reaching end point
    var ball_loc = ball.getBoundingClientRect()
    var end_loc = end.getBoundingClientRect()

    var win = !(end_loc.right < ball_loc.left || 
                end_loc.left > ball_loc.right || 
                end_loc.bottom < ball_loc.top || 
                end_loc.top > ball_loc.bottom) 
    if(win){
      clearInterval(run_game)      
      if(level_count < levels.length - 1) {
        level_count++
        walls = []
        newMaze()  
      } else {
        level_count = 0
        walls = []
        newMaze()
      } 
    }   
  }
  var run_game = setInterval(moveMaze,1000/60)

  }
setTimeout(function(){ 
  newMaze()
},250)
</script>

</body>
</html>