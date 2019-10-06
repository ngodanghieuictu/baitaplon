import React, {Component} from 'react';
import {
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  AsyncStorage,
  TouchableOpacity,
  View,
  FlatList,
  Alert,
  TouchableWithoutFeedback,
  TouchableHighlight,
  Dimensions,
  TextInput,
  Button
} from 'react-native';
const windoMain= Dimensions.get('window');
var user = AsyncStorage.getItem('user');
export default class ProductDetail extends Component{
 static navigationOptions = {
    header: null,
};
  _onChangeText(text){
      Alert.alert(text);
    }
  constructor(props) {
        super(props)
        this.state = {
            isLoading: true,
            qty:'1'
        }
    }

    orderProduct(){
     
    }
    congQty(){
      let {qty} =this.state;

      console.log(qty);
    }
  render(){

    const data =this.props.navigation.getParam('data')
      var links = "http://192.168.1.113:81/phattriendanentang"+data.image
    return(
      <View style={styles.container}>
        <ScrollView >
          <View style={styles.container}>
              <View style={styles.header}>
                <Image
                      style={styles.images}
                      source={{uri:links}}
                       />
              </View>
              <View style={styles.title,{alignItems:'center',marginBottom:10}}><Text style={{fontSize: 20}}>{data.name}</Text></View>
              <View style={styles.title,{marginLeft:10}}><Text>Giá : {data.price * this.state.qty} vnd</Text></View>
              <View style={styles.qty,{flexDirection: 'row',margin:10}}>
                
                <View style={{flexDirection: 'row',height:35}}>
                <Text style={{paddingTop:7,paddingRight:5}}>Số lượng :</Text>
                <Button style={{alignItems:'center',width:35,height:5,marginRight:5}}
                  title=" - "
                   onPress={()=> {
                    let a = this.state.qty;
                    a == 1 ?  1:a--;
                    data.qty = a;
                    this.setState({qty:a+""});
                  }}
                />
                  
                <TextInput style={{width:37,height:35,textAlign:'center',marginRight:5,marginTop:6}}
                  onChangeText={text => this.setState({qty: text})}
                  value={this.state.qty}
                />
                <Button style={{alignItems:'center',height:20,marginRight:5}}
                  title=" +"
                  onPress={()=> {
                    let a = this.state.qty;
                    a++;
                    data.qty = a;
                    this.setState({qty:a+""});
                  }}
                />
                </View>

              </View>
              <View style={styles.title,{marginLeft:10,}}><Text>Chi tiết sản phẩm:</Text></View>
              <View style={styles.title,
                          {
                            margin:10,
                            padding:13,
                            backgroundColor:'#e7e5e4',
                            borderRadius: 10,
                            borderWidth: 1,
                            borderColor: '#fff'
                          }}>
                <View style={styles.itemrow}>
                    <View><Text style={styles.itemrow1}>Kho</Text></View>
                    <View><Text>{data.kho}</Text></View>
                </View>
                <View style={styles.itemrow}>
                    <View><Text style={styles.itemrow1}>Thương hiệu:</Text></View>
                    <View><Text>{data.thuonghieu}</Text></View>
                </View>
                <View style={styles.itemrow}>
                    <View><Text style={styles.itemrow1}>Chất liệu:</Text></View>
                    <View><Text>{data.chatlieu}</Text></View>
                </View>
                <View style={styles.itemrow}>
                    <View><Text style={styles.itemrow1}>Phong cách:</Text></View>
                    <View><Text>{data.phongcach}</Text></View>
                </View>
                <View style={styles.itemrow}>
                    <View><Text style={styles.itemrow1}>Loại</Text></View>
                    <View><Text>{data.loai}</Text></View>
                </View>
                <View style={styles.itemrow}>
                    <View><Text style={styles.itemrow1}>Nơi gửi:</Text></View>
                    <View><Text>{data.noigui}</Text></View>
                </View>
              </View>
              <View style={styles.title,{marginLeft:10}}><Text>Thông tin sản phẩm:</Text></View>
              <View style={styles.title,{
                            margin:10,
                            padding:13,
                            backgroundColor:'#e7e5e4',
                            borderRadius: 10,
                            borderWidth: 1,
                            paddingBottom:40,
                            borderColor: '#fff'
              }}><Text >{data.content}</Text></View>
          </View>
        </ScrollView>
        <View style={styles.shopbottom}>
          <Button
            title="Mua hang"
            onPress={() => {
              let a = this.state.qty;
              let total = a * data.price;
                   if(a <= 0 || a == '' ){
                    Alert.alert("Số lượng không hợp lệ !!!")
                   }else if(user == null){
                    
                    // this.props.navigation.navigate("Login");
                   }
                   else{
                    let ORDERPRO ="http://192.168.1.113:81/phattriendanentang/order.php"
                   fetch(ORDERPRO, {
                        method: 'POST',
                        headers: new Headers({
                                   'Content-Type': 'application/x-www-form-urlencoded', 
                          }),
                        body: JSON.stringify({userdata: user,orderData: data,total:total})})
                      .then((response) => response.text())
                      .then((responseText) => {
                        alert("Đặt hàng thành công.");
                      })
                      .catch((error) => {
                          alert("Co loi xay ra");
                      });
                   }
            }}
          />
        </View>
      </View>

    );
  }
};

const styles = StyleSheet.create({
  container: {
    paddingTop:10,
    width: windoMain.width,
  },
  images:{
    width:200,
    height:250,
  },
  scrollView: {
    backgroundColor: 'pink',
    marginHorizontal: 20,
  },
  title:{
    marginTop:2,
    marginBottom:2
  },
  header:{
    height:250,
    alignItems:'center',
  },
  qty:{
    height: 35,
    borderColor: 'gray',
    borderWidth: 1,
    width:200,
  },
  itemrow:{
    flexDirection: 'row'
  },
  itemrow1:{
    width:100
  },shopbottom:{
    height:40,
    width: windoMain.width,
    position: 'absolute',
    bottom:0
  },
});
