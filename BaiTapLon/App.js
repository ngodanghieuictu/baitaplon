//import navigation
import { createAppContainer } from 'react-navigation';
import { createStackNavigator } from 'react-navigation-stack';
import {AsyncStorage,Alert} from 'react-native';

//import screens
import HomeScreen from './screens/HomeScreen';
import ProductDetail from './screens/ProductDetail';
import LoginScreen from './screens/LoginScreen';

var user = null;
let screen = null;
 user = AsyncStorage.getItem('user');
    if(user == null ){
    screen = 'Login';
    console.log("screen Login"+user);
  	}else{
  		screen = 'Home';
      console.log("screen Home"+user);
  	}

const NavigationScreens = createStackNavigator(
  {
  	Login:LoginScreen,
    Home: HomeScreen,
    Pro: ProductDetail,
    
  },
  {
    initialRouteName: screen,
  }

);
 console.log("init"+user);
export default createAppContainer(NavigationScreens);
