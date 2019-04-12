# 원과 포인트 충돌 검사하기

## Demo 페이지
https://hanjoongcho.github.io/awesome-bokjeong/algorithm/intgersection_01.html  

## intgersection_01.html
```
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="  crossorigin="anonymous"></script>
    <script src='intgersection_01.js' type="text/javascript"></script>
    <title>2차원 화면좌표 공간연산 알고리즘</title>
    <style type="text/css">
    div {
       font-size: 15px;
    }
    </style>
  </head>
  <body>
    <h1>원과 포인트 충돌 검사</h1>
    <div id="point">Click Point(Canvas): 0, 0</div>
    <div id="pointOrigin">Click Point(Circle origin): 0, 0</div>
    <div id="tan">tan: 0</div>
    <div id="cotangent">cotangent(radian): 0</div>
    <div id="cotangentD">cotangent(degree): 0</div>
    <div id="cotangent2">cotangent2(radian): 0</div>
    <div id="message">충돌하는 Sector 없음</div>
    <div id="distanceFromOrigin">원점으로부터의 거리:(px): 0</div>
    <canvas id='canvas' style="border: solid black 1px; width: 600px; height: 500px;"></canvas>
    <pre>
       Circle and Sector collision
       Reference Link:
          https://www.geeksforgeeks.org/check-whether-point-exists-circle-sector-not/
    </pre>
  </body>
</html>
```

## intgersection_01.js
```
var prop = {
    cicleCenterX: 300,
    cicleCenterY: 250,
    circleRadius: 150,
    sectorSAngel: 0,
    sectorEAngel: 90,
    gridSize: 50,
    canvas: {width: 600, height: 500},
    quadrant: 0 /*1 ~ 4*/
}

var ctx;

function init() {
    var canvas = document.getElementById('canvas');
    ctx = canvas.getContext('2d');
    canvas.width = prop.canvas.width;
    canvas.height = prop.canvas.height;
    draw();
}

function draw() {
    // 배경 채우기
    ctx.beginPath();
    ctx.moveTo(0, 0);
    ctx.fillStyle = 'rgba(0, 0, 0, 0.7)';
    ctx.fillRect(0, 0, this.canvas.width, this.canvas.height);
    var gridSize = prop.gridSize;
    // draw vertical grid
    ctx.beginPath();
    for (var x = 1; x <= canvas.width / gridSize ; x++) {
        ctx.moveTo(x * gridSize + 0.5, 0);
        ctx.lineTo(x * gridSize + 0.5, canvas.height);
    }
    ctx.strokeStyle = 'rgb(255, 255, 255)';
    ctx.lineWidth = 1;
    ctx.stroke();
    
    // draw horizontal grid
    ctx.beginPath();
    for (var y = 1; y <= canvas.height / gridSize; y++) {
        ctx.moveTo(0, y * gridSize + 0.5);
        ctx.lineTo(canvas.width, y * gridSize + 0.5);
    }
    ctx.stroke();
    
    ctx.beginPath();
    ctx.strokeStyle = 'black';
    ctx.lineWidth = 2;
    ctx.moveTo(prop.cicleCenterX, prop.cicleCenterY);
    drawCircleSector(ctx, 0, 90);
    drawCircleSector(ctx, 90, 180);
    drawCircleSector(ctx, 180, 270);
    drawCircleSector(ctx, 270, 360);
    
    
    // draw text
    ctx.fillStyle = 'white';
    ctx.font = "20px Arial";
    ctx.fillText("0 ~ 90", 325, 213);
    ctx.fillText("90 ~ 180", 325, 293);
    ctx.fillText("180 ~ 270", 185, 293);
    ctx.fillText("270 ~ 360", 185, 213);
    ctx.font = "15px Arial";
    ctx.fillText("0 radian", 460, prop.cicleCenterY - 5);
    ctx.fillText("π/2 radian", 305, 90);
    ctx.fillText("2π/2 radian", 60, prop.cicleCenterY - 5);
    ctx.fillText("3π/2 radian", 305, 420);
}

function drawCircleSector(ctx, sAngle, eAngle) {
    ctx.moveTo(prop.cicleCenterX, prop.cicleCenterY);
    ctx.arc(prop.cicleCenterX, prop.cicleCenterY, prop.circleRadius, (Math.PI/180)*(-90 + sAngle), (Math.PI/180)*(-90 + eAngle), false);
    ctx.closePath();
    ctx.stroke();
}

function degreesToRadians(degrees) {
    return degrees * (Math.PI/180);
}

function radiansToDegrees(radians) {
    return radians * (180/Math.PI);
}

$(function() {
    init();
    
    $('#canvas').on('click',function(e) {
        ctx.clearRect(0, 0, prop.canvas.width, prop.canvas.height)
        draw();
        
        var height = document.getElementById('canvas').height;
        var flipY = height - e.offsetY;
        var distanceX = e.offsetX - prop.cicleCenterX;
        var distanceY = prop.cicleCenterY - e.offsetY;
        
        // 1 ~ 4사분면 중 어디에 속하는지 확인
        var arcTangent = Math.atan2(distanceY, distanceX);
        if (arcTangent >= 0 && arcTangent < Math.PI / 2) {
            prop.quadrant = 1
        } else if (arcTangent >= Math.PI / 2 && arcTangent < Math.PI) {
            prop.quadrant = 2
        } else if (arcTangent * -1 >= Math.PI / 2 && arcTangent * -1 < Math.PI) {
            prop.quadrant = 3
        } else {
            prop.quadrant = 4
        }
        console.log(prop.quadrant + '사분면 클릭')
        
        // 원점과 클릭 포인트 사이의 거리를 계산
        var distanceFromOrigin = Math.sqrt(distanceX*distanceX + distanceY*distanceY);
        $('#distanceFromOrigin').html('원점으로부터의 거리:(px): ' + distanceFromOrigin);
        
        // 4개 섹션과의 출돌 검사
        var isCollision = distanceFromOrigin <= prop.circleRadius ? true : false;  
        console.log(isCollision);
        
        // 원점에서 ~ 클릭포인트 라인그리기
        ctx.beginPath();
        ctx.lineWidth = 1;
        ctx.strokeStyle = 'rgb(255, 0, 0)';
        ctx.moveTo(prop.cicleCenterX, prop.cicleCenterY);
        ctx.lineTo(e.offsetX, e.offsetY);
        ctx.stroke();
        
        // 마우스 클릭 위치 베어링으로 그리드 크기만큼 라인 그리기
//        var moveX = Math.cos(arcTangent) * prop.gridSize;
//        var moveY = Math.sin(arcTangent) * prop.gridSize * -1;
//        ctx.beginPath();
//        ctx.lineWidth = 1;
//        ctx.strokeStyle = 'rgb(0, 0, 255)';
//        ctx.moveTo(e.offsetX, e.offsetY);
//        ctx.lineTo(e.offsetX + moveX, e.offsetY + moveY);
//        ctx.stroke();
        
        // 클릭지점 포인트 그리기
        ctx.beginPath();
        ctx.arc(e.offsetX, e.offsetY, 2, 0, 2 * Math.PI);
        ctx.fillStyle = 'rgba(0, 255, 0, 1)';
        ctx.fill();
        
        // 충돌검사 결과 출력
        $('#point').html('Click Point(Canvas): ' + e.offsetX + ', ' + e.offsetY);
        if (isCollision) {
            $('#message').html(prop.quadrant + '사분면 Sector와 충돌함');
        } else {
            $('#message').html(prop.quadrant + '사분면 Sector를  벗어남');
        }

        // tangent 및 arc tangent 출력
        var tangent = distanceY/distanceX;
        var angle = Math.atan(tangent);
        $('#tan').html('tan: ' + tangent);
        $('#cotangent').html('cotangent(radian): ' + angle);
        $('#cotangentD').html('cotangent(degree): ' + radiansToDegrees(angle));
        $('#cotangent2').html('cotangent2(radian): ' + Math.atan2(distanceY, distanceX));
        
        // 원점으로부터의 클릭 포인트 출력
        var positionFromOriginX = Math.cos(angle)*distanceFromOrigin;
        var positionFromOriginY = Math.sin(angle)*distanceFromOrigin;
        $('#pointOrigin').html('Click Point(Circle origin): ' + positionFromOriginX + ',' + positionFromOriginY);
    });
});
```

