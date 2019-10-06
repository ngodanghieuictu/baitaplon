import React, {Component} from 'react';
import {
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
  AsyncStorage,
  FlatList,
  Alert,
  TouchableWithoutFeedback,
  TouchableHighlight
} from 'react-native';

//import { MonoText } from '../components/StyledText';
import ButtonLogout from '../components/ButtonLogout';
import LoddingData from '../components/LoddingData';
// var user = AsyncStorage.getItem('user');

class FlatListItem extends Component{
  actionOnRow(item) {
   Alert.alert('Selected Item :',item.id);

}
  render(){
    
    var links = "http://192.168.1.113:81/phattriendanentang"+this.props.item.image
    return(
      <TouchableOpacity onPress={() => { this.props.navigation.navigate("Pro",{data:this.props.item})}}>
      <View style= {{
          flex:1,
          flexDirection: 'row',
          margin:5,
          padding:8,
          backgroundColor:'#e7e5e4',
          borderRadius: 10,
          borderWidth: 1,
          borderColor: '#fff'
        }}>
        <View style = {{
            marginRight:10
          }}>
          <Image
                style={{width: 70, height: 70}}
                source={{uri:links}}
                 />
        </View>
        <View>
          <Text>{this.props.item.name}</Text>
          <Text>{this.props.item.des}</Text>
          <Text>{this.props.item.price} VNĐ</Text>
        </View>
        <View>
        </View>
      </View>
    </TouchableOpacity  >
    );
  }
};

export default class HomeScreen extends Component{
  static navigationOptions = {
    header: null,
};
  constructor(props) {
        super(props)
        this.state = {
            isLoading: true,
        },
      AsyncStorage.getItem('user').then((userToken) => {
        // let parsed = JSON.parse(userToken);
          this.setState({dataUser:userToken});
          if(userToken == null){
            this.props.navigation.navigate("Login");
          }

      })
    }
    componentDidMount() {
      fetch("http://192.168.1.113:81/phattriendanentang/getproduct.php", {
              method: 'GET',
              headers: {
                  'Accept': 'application/json',
                  'Content-Type': 'application/json',
              }
          }).then((response) => response.json())
              .then((responseData) => {
                  this.setState({
                      isLoading: false,
                      dataSource: responseData
                  }, function () {

                  });
              }).catch(function (err) {
                  Alert.alert("Đã có lỗi xảy ra...");
                  console.log(err);
              }).done();
  }

  render(){
    return(
     
      <View style= {{flex:1}}>
      <View style={{width:'100%',flexDirection:'row-reverse',}}><ButtonLogout navigation={this.props.navigation} /></View>
        <FlatList style={{marginTop:10}}
          data ={this.state.dataSource}
          renderItem = {({item,index})=>{
            return(
                <FlatListItem navigation={this.props.navigation} item={item} index={index}>
                </FlatListItem>
            );
          }}
          >
        </FlatList>
      </View>

    );
  }

};
