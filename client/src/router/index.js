import { createRouter, createWebHistory } from 'vue-router';
import HomeView from '../views/HomeView.vue';
import AuftragTable from '../views/AuftragTable.vue';
import DienstleisterView from '../views/DienstleisterView.vue';
import AboutView from '../views/AboutView.vue';
import RegisterView from '../views/Register.vue';

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/table',
      name: 'table',
      component: AuftragTable,
    },

    {
      path: '/dienstleister',
      name: 'dienstleister',
      component: DienstleisterView,
    },
    {
      path: '/about',
      name: 'about',
      component: AboutView,
    },
    {
      path: '/register',
      name: 'register',
      component: RegisterView,
    },
  ],
});

export default router;
