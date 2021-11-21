<template>
<div class="card w-50 mx-auto mt-4">
  <div class="card-body">
    <form>        
        <div class="row">
            <div class="col-md-6">
                <label class="form-label">Nombre (s)</label>
                <input type="text" v-model="formdata.name" class="form-control">
            </div>

            <div class="col-md-6">
                <label class="form-label">Apellido</label>
                <input type="text" v-model="formdata.last_name" class="form-control">
            </div>        
        </div>

        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">Código postal</label>
                <input type="text" v-model="formdata.postal_code" class="form-control">
            </div>        
        </div>

        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">País</label>
                <input type="text" v-model="formdata.country" class="form-control">
            </div>
            
            <div class="col-md-6 pt-2">
                <label class="form-label">Estado</label>
                <input type="text" v-model="formdata.state" class="form-control">
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">Municipio / Delegación</label>
                <input type="text" v-model="formdata.municipality" class="form-control">
            </div>
            
            <div class="col-md-6 pt-2">
                <label class="form-label">Ciudad</label>
                <input type="text" v-model="formdata.city" class="form-control">
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">Colonia</label>
                <input type="text" v-model="formdata.colony" class="form-control">
            </div>

            <div class="col-md-6 pt-2">
                <label class="form-label">Calle</label>
                <input type="text" v-model="formdata.street" class="form-control">
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">Número exterior</label>
                <input type="text" v-model="formdata.external_number" class="form-control">
            </div>
            
            <div class="col-md-6 pt-2">
                <label class="form-label">Número interior</label>
                <input type="text" v-model="formdata.internal_number" class="form-control">
            </div>
        </div>

        <div class="d-grid gap-2 d-md-flex justify-content-md-end pt-2">
            <button type="button" class="btn btn-primary" @click="submit" :disabled="disabledSubmitButton">Guardar</button>
        </div>
    </form>
  </div>
</div>
</template>

<script>
import myMixin from '../packs/utils'
export default {
  mixins: [myMixin],
  data: function () {
    return {
        disabledSubmitButton: false,
        formdata: {
            name: "",
            last_name: "",
            postal_code: "",
            country: "",
            state: "",
            municipality: "",
            city: "",
            colony: "",
            street: "",
            external_number: "",
            internal_number: ""
        }
    }
  },
  created: function(){
      console.log("ssdsds")
  },
  watch:{
      'formdata.postal_code': function(value){
          console.log(value);
      }
  },
  methods:{
      submit: async function(){
        this.disabledSubmitButton = true
        const response = await axios.post(Routes.addresses_url({format: 'json'}), { address: this.formdata })
        await this.responseMessage(response.data, 'La dirección fue guardada exitosamente')
        this.disabledSubmitButton = false
        if(!response.errors){
            this.clearFields()
        }
      },
      clearFields: function () {
          for (var key in this.formdata) {
            this.formdata[key] = ""
          }
      }
  }
}
</script>

<style scoped>
</style>
