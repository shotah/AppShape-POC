import React, {ReactElement} from 'react';
import logo from './pinata.png';
// import logo from './logo.svg';
import './App.css';

function App(): ReactElement {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.tsx</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React test2
        </a>
      </header>
    </div>
  );
}

export default App;
