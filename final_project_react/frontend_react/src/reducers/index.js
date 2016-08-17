import { combineReducers } from 'redux'
import myAdmins from './myAdmins'
import myArticles from './myArticles'
import myInterests from './myInterests'
import myJobs from './myJobs'
import myLocations from './myLocations'
import myOrganizations from './myOrganizations'
import myUsers from './myUsers'
import {reducer as formReducer} from 'redux-form'
import myCurrentUser from './myCurrentUser'
import myGetCurrentUser from './myGetCurrentUser'
import myAddUser from './myAddUser'

const localReducers = {
	myCurrentUser,
	myGetCurrentUser,
	myAdmins,
  myArticles,
  myInterests,
  myJobs,
  myLocations,
  myOrganizations,
  myUsers
}

const reducers = {
	myAddUser: myAddUser,
  myGetCurrentUser: myGetCurrentUser,
  form: formReducer     // <---- Mounted at 'form'. See note below.
}


const rootReducer = combineReducers(reducers)

export default rootReducer