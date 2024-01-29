import { createRouter, createWebHistory } from 'vue-router';
import HomeView from '../views/HomeView.vue';
import AuftragTable from '../views/AuftragTable.vue';
import GlassesDetail from '../views/GlassesDetail.vue';
import DienstleisterView from '../views/DienstleisterView.vue';

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
      path: '/detail/:id',
      name: 'detail',
      component: GlassesDetail,
      props: true,
    },
    {
      path: '/dienstleister',
      name: 'dienstleister',
      component: DienstleisterView,
    },
  ],
});

export default router;
