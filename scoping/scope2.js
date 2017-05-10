// https://github.com/getify/You-Dont-Know-JS/blob/master/this%20&%20object%20prototypes/ch1.md

function foo() {
    return this.x;
}

function bar() {
    console.log( foo.call(this) );
}

var obj1 = {
    x: 6
};

var obj2 = {
    x: 8
};

console.log( foo.call(obj1) );
console.log( foo.call(obj2) );

bar.call(obj1);
bar.call(obj2);
