import axios from "axios";
const httpAxios = axios.create({
  baseURL: 'http://localhost/nguyenanhduong_2121110313/public/api/',
  timeout: 9000,
  headers: {'X-Custom-Header': 'foobar'}
});
export default httpAxios;