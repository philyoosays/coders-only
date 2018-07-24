import { AsyncStorage } from 'react-native';

const TokenService = {
  async save(token) {
    await AsyncStorage.setItem('@CodersOnly:authToken', token.token);
  },
  read() {
    // console.log(window.localStorage.getItem('authToken'))
    return AsyncStorage.getItem('@CodersOnly:authToken');
  },
  async destroy() {
    await AsyncStorage.removeItem('@CodersOnly:authToken');
  }
};

export default TokenService;
