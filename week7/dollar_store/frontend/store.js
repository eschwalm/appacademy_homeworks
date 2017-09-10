import { createStore } from 'redux';
import reducer from './reducer';

const _defaultStore = [];

const store = createStore(reducer);

export default store;
