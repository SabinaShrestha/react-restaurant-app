import React, { fragment } from 'react';
import './App.css';
import {Route, Switch} from 'react-router-dom';
import NavBar from './components/NavBar';
import NoMatch from './components/NoMatch';
import Restaurant from './components/Restaurant';

const App = () => (
  <Fragment>
    <NavBar />
    <Switch>
      <Route exact path="/" component={Restaurant} />
      <Route component={NoMatch} />
    </Switch>
  </Fragment>
)

export default App;
