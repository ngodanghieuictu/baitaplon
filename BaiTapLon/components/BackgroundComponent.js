import React, {Component} from 'react';
import {StyleSheet, Image,Dimensions} from 'react-native';


export default class BackgroundComponent extends Component {
  render() {
    return (
      <Image style={styles.picture}
        source={require('../images/login.png')} >
        {this.props.children}
      </Image>
    );
  }
}

const styles = StyleSheet.create({
  picture: {
    flex: 1,
    width: null,
    height: null,
    resizeMode: 'cover',
  },
});