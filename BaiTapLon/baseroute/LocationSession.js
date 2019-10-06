//import navigation
import Component from 'react';
import { createAppContainer } from 'react-navigation';
import { createStackNavigator } from 'react-navigation-stack';
import {AsyncStorage,Alert} from 'react-native';


var user = AsyncStorage.getItem('user');
export class LocationSession extends Component{
 setSession(text){
  console.log(text);
 }
}
