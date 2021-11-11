<template>
    <div class="row my-3">
        <div class="col-4">
            <label for="meta-minima">Meta minima</label>
            <input v-model="meta_minima" class="form-control" id="meta-minima" name="meta-minima"
                   @input="cambiarMetaMin">
        </div>
        <div class="col-4">
            <label for="meta-maxima">Meta maxima</label>
            <input v-model="meta_maxima" class="form-control" id="meta-maxima" name="meta-maxima"
                   @input="cambiarMetaMax">
        </div>
        <slot name="buttons"></slot>
    </div>
</template>

<script>

import _ from 'lodash';

export default {
    name: "MetaMensual",
    props: {
        mes_nomina_id: {
            required: true,
            default: 0
        }
    },
    data() {
        return {
            meta_minima: 0,
            meta_maxima: 0
        }
    },
    methods: {
        cambiarMetaMin: _.debounce(function () {
            this.cambiarMetaMinima();
        }, 500),
        cambiarMetaMinima() {
            axios.post(this.$route('mes-nomina.meta-minima', {
                id: this.$props.mes_nomina_id,
                cantidad: this.meta_minima
            })).then(response => {
                this.meta_minima = response.data.meta_minima;
                this.meta_maxima = response.data.meta_maxima;
            })
        },
        cambiarMetaMax: _.debounce(function () {
            this.cambiarMetaMaxima();
        }, 500),
        cambiarMetaMaxima() {
            axios.post(this.$route('mes-nomina.meta-maxima', {
                id: this.$props.mes_nomina_id,
                cantidad: this.meta_maxima
            })).then(response => {
                this.meta_minima = response.data.meta_minima;
                this.meta_maxima = response.data.meta_maxima;
            })
        },
        obtenerMetas() {
            axios.get(this.$route('mes-nomina.metas', this.$props.mes_nomina_id)).then(response => {
                this.meta_minima = response.data.meta_minima;
                this.meta_maxima = response.data.meta_maxima;
            })
        },
    },
    mounted() {
        this.obtenerMetas()
    }
}
</script>

<style scoped>

</style>
