function digiclock(){
    let date=new Date();
    let hrs=date.getHours();
    let mins=date.getMinutes();
    let secs=date.getSeconds();
    let timezone="AM"
    if(hrs>12){
        hrs-=12;
        timezone="PM";
        if(hrs==0){
            hrs=12;
        }
    }
    if(hrs<10){
        hrs="0"+hrs;
    }
    if(mins<10){
        mins="0"+mins;
    }
    if(secs<10){
        secs="0"+secs;
    }
    let tym=hrs+":"+mins+":"+secs+" "+timezone;
    console.log(tym);
    let t=setTimeout(function(){digiclock()},1000);
}
digiclock();