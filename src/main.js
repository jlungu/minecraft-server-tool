import Vue from 'vue';
import App from './App.vue';
import VueRouter from 'vue-router';
import 'bootstrap'; 
import 'bootstrap/dist/css/bootstrap.min.css';

import routes from './router/routes';

Vue.config.productionTip = false;

Vue.use(VueRouter);

const router = new VueRouter({routes});

new Vue({
    router,
    render: h => h(App)
}).$mount('#app');
