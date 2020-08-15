// -------------------------------------

function Player(fullName, age) {
  this.fullName = fullName
  this.age = age
}

Player.prototype.sayHi = function() {
  console.log('Hi! ' + this.fullName)
}

const inori = new Player('Inori', 16)
inori.sayHi()

// -------------------------------------

// 這段程式碼是在inori已經實體化之後加上的
Player.prototype.myAge = function(){
  console.log('My age is ' + this.age)
}

// 可以再使用
inore.myAge()

// -------------------------------------

class Player {
    constructor(fullName, age, gender, hairColor) {
        this.fullName = fullName
        this.age = age
        this.gender = gender
        this.hairColor = hairColor
    }

    toString() {
        return 'Name: '+this.fullName+', Age:'+this.age
    }
}

const inori = new Player('Inori', 16, 'girl', 'pink')
console.log(inori.toString())
console.log(inori.fullName)

const tsugumi = new Player('Tsugumi', 14, 'girl', 'purple')
console.log(tsugumi.toString())

// -------------------------------------

const inori = new Player('Inori', 16, 'girl', 'pink')

// -------------------------------------

constructor(fullName, age, gender, hairColor) {
    this.fullName = fullName
    this.age = age
    this.gender = gender
    this.hairColor = hairColor
}

// -------------------------------------

class Option {
    constructor(key, value, autoLoad = false) {
        if (typeof key != 'undefined') {
            this[key] = value
        }
        this.autoLoad = autoLoad
    }
}

const op1 = new Option('color', 'red')
const op2 = new Option('color', 'blue', true)

// -------------------------------------

class Student {
    constructor(id, firstName, lastName) {
        this._id = id
        this._firstName = firstName
        this._lastName = lastName
    }

    toString() {
        return 'id is '+this._id+' his/her name is '+this.firstName+' '+this.lastName
    }
}

// -------------------------------------

class Student {
    constructor(id, firstName, lastName) {
      let age = 20 // 這是私有的

      this.name = firstName + ' ' + lastName // 這是公開的

      this.greet = function () {
         // 這裡可以存取得到name與age
         console.log(`name: ${this.name}, age: ${age}`);
      }
    }

    toString() {
        return 'id is '+this._id+' his/her name is '+this.firstName+' '+this.lastName
    }
}

const aStudent = new Student(123, 'Eddy', 'Chang')
console.log(aStudent.age)
aStudent.greet()

// -------------------------------------

class Option {
    constructor(key, value, autoLoad = false) {
        if (typeof key != 'undefined') {
            this['_' + key] = value;
        }
        this.autoLoad = autoLoad;
    }

    get color() {
      if (this._color !== undefined) {
        return this._color
      } else {
        return 'no color prop'
      }
    }

    set color(value) {
      this._color = value
    }
}

const op1 = new Option('color', 'red')
op1.color = 'yellow'

const op2 = new Option('action', 'run')
op2.color = 'yellow'

// -------------------------------------

class Student {
    constructor(id, firstName, lastName) {
        this.id = id
        this.firstName = firstName
        this.lastName = lastName

        //這裡呼叫靜態方法，每次建構出一個學生實體就執行一次
        Student._countStudent()
    }

    //靜態方法的定義
    static _countStudent(){
      if(this._numOfStudents === undefined) {
          this._numOfStudents = 1
      } else {
          this._numOfStudents++
      }
    }

    //用getter與靜態方法取出目前的學生數量
    static get numOfStudents(){
      return this._numOfStudents
    }

}

const aStudent = new Student(11, 'Eddy', 'Chang')
console.log(Student.numOfStudents)

const bStudent = new Student(22, 'Ed', 'Lu')
console.log(Student.numOfStudents)

// -------------------------------------

// ES7語法方式
class Video extends React.Component {
  static defaultProps = {
    autoPlay: false,
    maxLoops: 10,
  }
  render() { ... }
}
```

```js
// ES6語法方式
class Video extends React.Component {
  constructor(props) { ... }
  render() { ... }
}

Video.defaultProps = { ... }

// -------------------------------------

class Point {
    constructor(x, y) {
        this.x = x
        this.y = y
    }
    toString() {
        return '(' + this.x + ', ' + this.y + ')';
    }
}

class ColorPoint extends Point {
    constructor(x, y, color) {
        super(x, y)
        this.color = color
    }
    toString() {
        return super.toString() + ' in ' + this.color
    }
}

// -------------------------------------

class PostInfo extends React.Component {
  handleOptionsButtonClick = (e) => {
    this.setState({showOptionsModal: true});
  }
}

// -------------------------------------

class PostInfo extends React.Component {
  constructor(props) {
    super(props);
    // 手動綁定的語法，綁定this到元件的實體...
    this.handleOptionsButtonClick = this.handleOptionsButtonClick.bind(this);
  }
  handleOptionsButtonClick(e) {
    // ...確保'this'可以參照到元件的實體
    this.setState({showOptionsModal: true});
  }
}

// -------------------------------------
