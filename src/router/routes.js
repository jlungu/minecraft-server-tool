import Home from '../components/Home.vue';
import Download from '../components/Download.vue';
import Instructions from '../components/Instructions.vue';
const routes = [
    { path: '/', component: Home },
    { path: '/download', component: Download },
    { path: '/instructions', component: Instructions },
];

export default routes;