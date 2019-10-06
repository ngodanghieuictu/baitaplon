import React,{ Component } from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  Alert,
  StatusBar,
  TextInput,Button,AsyncStorage,ImageBackground,Image
} from 'react-native';

import {
  Header,
  LearnMoreLinks,
  Colors,
  
  DebugInstructions,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';
export default class LoginScreen extends Component{
   static navigationOptions = {
    header: null,
};
  constructor(props) {
        super(props)
        this.state = {
            username : '',
            password : '',
        }
    }
   prosecLogin = ()=> {
    const { username,password }  = this.state ;
    let GETUSER ="http://192.168.1.113:81/phattriendanentang/login.php?name="+username+"&pass="+password
  fetch(GETUSER, {
              method: 'GET',
              headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json',
              }
          }).then((response) => response.json())
              .then((responseData) => {
                  
                  if(responseData.status == 0){
                    console.log("sai ten dang nhap");
                  }else{
                    AsyncStorage.setItem('user',JSON.stringify(responseData.data));
                    this.props.navigation.navigate("Home");
                  }
              }).catch(function (err) {
                  Alert.alert("Đã có lỗi xảy ra...");
                  console.log(err);
              }).done();
};

  render(){
    AsyncStorage.removeItem('user');
        AsyncStorage.clear();
    return (
      

    <ImageBackground source={require('../images/login.png')} style={{width: '100%', height: '100%'}}>
    <View style={styles.body}>
        <View style={styles.top}><Text style={styles.textlogin}>ĐĂNG NHẬP</Text></View>
        <View style={styles.content}>
          <TextInput
           style={styles.textInput}
           placeholder="Nhập tên đăng nhập..."
            onChangeText={text => this.setState({username: text})}
            value={this.state.username}
         />
         <TextInput
          style={styles.textInput}
          placeholder="**************"
          secureTextEntry={true}
          onChangeText={text => this.setState({password: text})}
            value={this.state.password}

        />
        <View style={styles.buttonContainer}>
              <Button onPress={this.prosecLogin}
                title="Đăng Nhập"
              />
        </View>
        </View>
      </View>
  </ImageBackground>
  );
  }
   
};

const styles = StyleSheet.create({
  body: {
    flex:1,
    
  },
  content:{flex:0.5,
    justifyContent: "center",
  },
  top:{
    flex:0.2,
    justifyContent: "center",
    alignItems: 'center',
  },
  textInput: {
    margin:20,
    backgroundColor: '#FAFAFA',
    height: 40,
  },
  buttonContainer: {
    margin: 20
  },
  textlogin:{
    fontSize: 40,
    color: '#FFFFFF',
    fontWeight: 'bold',
    justifyContent: "center",

  }
});

