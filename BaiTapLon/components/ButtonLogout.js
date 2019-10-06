
import React,{Component} from 'react'
import {StyleSheet,Image,AsyncStorage,TouchableOpacity,Button,Text } from 'react-native'

export default class ButtonLogout extends Component{
	logoutuser(){
      AsyncStorage.removeItem('user');
      AsyncStorage.clear();
      console.log("logout");
    }
  render(){
    return(
    	<TouchableOpacity  onPress={this.logoutuser, () =>{this.props.navigation.navigate("Login");}}>
    	<Text style={{color:'#e60000',paddingTop:10}}> Đăng xuất </Text>
        </TouchableOpacity>
    
    );
  }
}

const styles = StyleSheet.create({
  icon:{
    zIndex:9,
    position:'absolute',
    top:0,
    right:20,
    width:35,
    height:35
  }

});
