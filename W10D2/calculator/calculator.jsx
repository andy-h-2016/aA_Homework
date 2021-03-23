import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    // your code here
    this.state = {result: 0, num1: "", num2: ""};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  // your code here
  // setNum1(e) {
  //   e.preventDefault();
  //   debugger
  //   this.setState({[e.target.id]: parseInt(e.target.current.value)}, () => {
  //     this.setState({result: this.state.num1 + this.state.num2});
  //   });
  // }

  setNum1(e) {
    e.preventDefault();
    this.setState({num1: e.currentTarget.value})
  }
  setNum2(e) {
    e.preventDefault();
    this.setState({num2: e.currentTarget.value})
  }

  add(e) {
    e.preventDefault();
    this.setState({result: parseInt(this.state.num1) + parseInt(this.state.num2)})
  }

  subtract(e) {
    e.preventDefault();
    this.setState({result: parseInt(this.state.num1) - parseInt(this.state.num2)})
  }

  multiply(e) {
    e.preventDefault();
    this.setState({result: parseInt(this.state.num1) * parseInt(this.state.num2)})
  }
  
  divide(e) {
    e.preventDefault();
    this.setState({result: parseInt(this.state.num1) / parseInt(this.state.num2)})
  }

  clear(e) {
    e.preventDefault();
    this.setState({result: 0, num1: "", num2: ""});
  }


  render() {
    let {result, num1, num2} = this.state;
    return (
      <div>
        <h1>Result: {result}</h1>

          <label htmlFor="num1">num1 </label>
          <input onChange={this.setNum1} id="num1" type="text" value={num1}/>
          <br />

          <label htmlFor="num2">num2 </label>
          <input onChange={this.setNum2} id="num2" type="text" value={num2}/>
          <br />

          <button onClick={this.add} value="+">+</button>
          <button onClick={this.subtract} value="-">-</button>
          <button onClick={this.multiply} value="*">x</button>
          <button onClick={this.divide} value="/">/</button>

          <button onClick={this.clear} value="clear">clear</button>
      </div>
    );
  }
}

export default Calculator;
