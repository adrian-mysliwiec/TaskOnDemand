<!--
  Screen to display all glasses as a table
-->
<script setup>
import { ref } from 'vue';
import { useAuftraegeStore } from '../stores/auftraegeStore.js';
const store = useAuftraegeStore();
store.fetchData();
const datum = ref('');
const Uhrzeit = ref('');
const Stundenlohn = ref('');
const Ort = ref('');
const Beschreibung = ref('');
const TelNummer = ref('');
const Dauer = ref('');
const Strasse = ref('');
const PLZ = ref('');
const columns = [
  {
    name: 'Datum',
    align: 'center',
    label: 'Datum',
    field: 'Datum',
    sortable: true,
  },
  {
    name: 'Uhrzeit',
    align: 'center',
    label: 'Uhrzeit',
    field: 'Uhrzeit',
    // format: (s) => s.slice(),
    sortable: false,
  },
  // {
  //   name: 'Stundenlohn',
  //   align: 'center',
  //   label: 'Stundenlohn',
  //   field: 'Stundenlohn',
  //   sortable: true,
  //   format: (s) => Number(s).toFixed(2),
  //   sort: (a, b) => Number(a) - Number(b),
  // },
  {
    name: 'Ort',
    align: 'center',
    label: 'Ort',
    field: 'Ort',
    sortable: true,
  },
  {
    name: 'Beschreibung',
    align: 'left',
    label: 'Beschreibung',
    field: 'Beschreibung',
    sortable: false,
  },
  {
    name: 'actions',
    align: 'center',
    label: 'Aktionen',
    field: '',
    sortable: false,
  },
];
const alert = ref(false);
const filter = ref('All');
const options = ['All', 'offen', 'belegt', 'abgeschlossen'];

function  filtering (){
  store.fetchData();

  if (filter.value != 'All') {
    store.auftraege = store.auftraege.filter(
      (val) => val.Status == filter.value,
    );
    console.log(filter.value);
    console.log(store.auftraege);
  } else store.fetchData();
}
</script>

<template>
  <div class="q-pa-md">
    <div class="q-pa-md" style="max-width: 300px">
      <div class="q-gutter-md">
        <q-select v-model="filter" :options="options" label="Filter" />
      </div>
      <q-btn
        color="white"
        icon="cloud_upload"
        text-color="black"
        label="Upload"
        @click="filtering()"
        class="q-mt-md q-ml-md"
      />
    </div>
    <div class="row q-pa-md">
      <q-input v-model="datum" label="Datum" class="q-mx-md" />
      <q-input v-model="Uhrzeit" label="Uhrzeit" class="q-mx-md" />
      <q-input v-model="Stundenlohn" label="Stundenlohn" class="q-mx-md" />
      <q-input v-model="Ort" label="Ort" class="q-mx-md" />
      <q-input v-model="TelNummer" label="Telefon" class="q-mx-md" />
      <q-input v-model="Dauer" label="Dauer" class="q-mx-md" />
      <q-input v-model="Strasse" label="Strasse" class="q-mx-md" />
      <q-input v-model="PLZ" label="PLZ" class="q-mx-md" />
      <q-input
        v-model="Beschreibung"
        autogrow
        label="Beschreibung"
        class="q-mx-md"
      />
      <q-btn
        color="white"
        icon="cloud_upload"
        text-color="black"
        label="Upload"
        @click="
          store.postAuftrag(
            Stundenlohn,
            datum,
            Uhrzeit,
            Ort,
            Beschreibung,
            TelNummer,
            Dauer,
            Strasse,
            PLZ,
          )
        "
        class="q-mt-md q-ml-md"
      />
    </div>
    <div>
      <q-dialog v-model="alert">
        <q-card>
          <q-card-section class="bg-primary">
            <div class="q-pa-md">
              <div class="text-left">
                <h6 class="text-white row q-ma-none">
                  {{ store.detail.Beschreibung }}
                </h6>
              </div>
              <!-- <img src="/logo.png" style="width: 50%" class="q-mt-none" /> -->
            </div>
          </q-card-section>

          <q-card-section class="q-pt-none">
            <div>
              <div class="q-mt-md">
                <b>Wann: </b>{{ store.detail.Datum }}, {{ store.detail.Uhrzeit
                }}<br />
                <b>Ort: </b>{{ store.detail.Strasse }}, {{ store.detail.PLZ }}
                {{ store.detail.Ort }}<br />
                <b>Kontakt: </b>{{ store.detail.TelNummer }}<br />
              </div>
            </div>
          </q-card-section>

          <q-card-actions align="right">
            <q-btn flat label="OK" color="primary" v-close-popup />
          </q-card-actions>
        </q-card>
      </q-dialog>
      <q-table
        :rows="store.auftraege"
        :columns="columns"
        row-key="id"
        binary-state-sort
        virtual-scroll
        :grid="$q.screen.xs"
        :rows-per-page-options="[0]"
        grid-header
      >
        <template v-slot:body-cell-image="props">
          <q-td :props="props">
            <img :src="props.value" />
          </q-td>
        </template>

        <template v-slot:body-cell-actions="props">
          <q-td :props="props">
            <q-btn
              :label="$q.screen.lt.md ? '' : 'Löschen'"
              class="q-ma-xs"
              icon="fa fa-trash-alt"
              @click="store.delAuftrag(props.row.AnzeigeNr)"
            ></q-btn>

            <!-- <q-btn
            :label="$q.screen.lt.md ? '' : 'Reduzieren'"
            class="q-ma-xs"
            icon="fa fa-down-long"
            @click="store.reducePrice(props.row)"
          ></q-btn> -->

            <q-btn
              :label="$q.screen.lt.md ? '' : 'Details'"
              class="q-ma-xs"
              icon="fa fa-circle-info"
              @click="(alert = true), store.AuftragDetails(props.row.AnzeigeNr)"
            ></q-btn>
          </q-td>
        </template>
        <!-- :to="`/detail/${props.row.id}`" -->
        <!-- mobile display -->

        <template v-slot:item="props">
          <div
            class="q-pa-xs col-xs-12 col-sm-6 col-md-4 col-lg-3 grid-style-transition"
          >
            <q-card>
              <q-card-section>
                {{ props.row.name }}
              </q-card-section>
              <div class="col-6">
                <q-img :src="`/images/coll/${props.row.thumb}`" />
              </div>

              <q-list dense>
                <q-item
                  v-for="col in props.cols.filter(
                    (col) => col.name !== 'image' && col.name !== 'name',
                  )"
                  :key="col.name"
                >
                  <q-item-section>
                    <q-item-label>{{ col.label }}</q-item-label>
                  </q-item-section>
                  <q-item-section side>
                    <q-item-label caption>{{ col.value }}</q-item-label>
                  </q-item-section>
                </q-item>
              </q-list>
              <q-card-section>
                <q-btn
                  :label="$q.screen.lt.md ? '' : 'Löschen'"
                  class="q-ma-xs"
                  icon="fa fa-trash-alt"
                  @click="store.removeGlass(props.row)"
                ></q-btn>
                <!-- 
              <q-btn
                :label="$q.screen.lt.md ? '' : 'Reduzieren'"
                class="q-ma-xs"
                icon="fa fa-down-long"
                @click="store.reducePrice(props.row)"
              ></q-btn> -->

                <q-btn
                  :label="$q.screen.lt.md ? '' : 'Details'"
                  class="q-ma-xs"
                  icon="fa fa-circle-info"
                  :to="`/detail/${props.row.id}`"
                ></q-btn>
              </q-card-section>
            </q-card>
          </div>
        </template>
      </q-table>
    </div>
  </div>
</template>

<style lang="scss" scoped></style>
