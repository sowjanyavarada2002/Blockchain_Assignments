console.log("FizzBuzz Program\n");

for(let i = 1;i < 100;i++){
    if(i % 3 == 0 && i % 5 == 0)
        console.log("FizzBuzz");
    else if(i % 5 == 0)
        console.log("Buzz");
    else if(i % 3 == 0)
        console.log("Fizz");
    else
        console.log(i);
}

console.log("\nRight right angled triange\n");

for(let i = 1;i <= 5;i++){
    for(let j = 1;j <= i;j++){
        process.stdout.write("*");
    }
    console.log("\n");
}

console.log("\nLeft right angle triangle\n");

for(let i = 1;i <= 5;i++){
    for(let j = 1;j <= 5;j++){
        if(5 - j < i)
            process.stdout.write("*");
        else
            process.stdout.write(" ");
    }
    console.log("\n");
}

console.log("\nPyramid structure\n");

for(let i = 0; i < 5;i++){
    for(let j = 0;j < 5 - i;j++){
        process.stdout.write(" ");
    }
    for(let j = 0;j  < 2 * i + 1;j++){
        process.stdout.write("*");
    }
    console.log("\n");
}