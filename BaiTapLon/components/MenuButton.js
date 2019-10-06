import React,{Component} from 'react'
import {StyleSheet,Image } from 'react-native'

export default class MenuButton extends Component{
  render(){
    return(
      <Image
        source={require('../images/menu.png')}
        name="md-menu"
        color="#000000"
        size={32}
        style={styles.icon}
        onPress = {() =>{}}
        />
    );
  }
}

const styles = StyleSheet.create({
  icon:{
    zIndex:9,
    position:'absolute',
    top:0,
    left:20,
    width:35,
    height:35
  }

});
