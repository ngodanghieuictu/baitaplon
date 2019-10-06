
import React,{Component} from 'react'
import {StyleSheet,Image ,ActivityIndicator,Dimensions} from 'react-native'
const windoMain= Dimensions.get('window');

export default class LoddingData extends Component{
  render(){
    return(
     <View style={styles.container}>
     <ActivityIndicator size="large" color="#0000ff" />
     </View>
    );
  }
}

const styles = StyleSheet.create({
  container:{
  	flex:1,
    position:'absolute',
    top:0,
    alignItems: 'center',
  }

});