/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import Vue from 'vue'
import VueRouter from 'vue-router'
import App from '../app.vue'
import Navbar from '../components/NavBar.vue'
import Addresses from '../components/Addresses.vue'
import AddressForm from '../components/AddressForm.vue'

Vue.component('nav-bar', Navbar);
Vue.component('addresses', Addresses);
Vue.component('address-form', AddressForm);

Vue.use(VueRouter);


const routes = [
  {
    path: '/',
    name: 'home',
    component: AddressForm
  },
  {
    path: '/addresses',
    name: 'adresses',
    component: Addresses
  }
]

const router = new VueRouter({
  routes})

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    router,
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)
})