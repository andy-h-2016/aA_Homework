import { createStore, applyMiddleware } from 'redux';
import rootReducer from '../reducers/root_reducer';

const addLoggingToDispatch = store => next => action => {
  // let dispatch = store.dispatch;
  console.log('Old State: ', store.getState());
  console.log('logging next ', next);
  console.log('action: ', action);
  // dispatch(action);

  let result = next(action);
  console.log('New State: ', store.getState());
  return result;
}

const middleware2 = store => next => action => {

  console.log('middleware2 next', next);
  console.log('action ', action);
  let result = next(action);
  console.log(store.getState().todos.length);
  return result;
}



const configureStore = (preloadedState = {}) => {
  let store = createStore(rootReducer, preloadedState, applyMiddleware(addLoggingToDispatch, middleware2));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

export default configureStore;
