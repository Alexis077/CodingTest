<template>

<div class="card w-50 mx-auto mt-4">
  <div class="card-body">
    <form>        
        <div class="row">
            <div class="col-md-6">
                <label class="form-label">Nombre (s)</label>
                <input type="text" v-model="name" class="form-control">
            </div>

            <div class="col-md-6">
                <label class="form-label">Apellido</label>
                <input type="text" v-model="lastName" class="form-control">
            </div>        
        </div>

        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">Código postal</label>
                <input type="text" v-model="postalCode" class="form-control">
            </div>        
        </div>

        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">País</label>
                <input type="text" v-model="country" class="form-control">
            </div>
            
            <div class="col-md-6 pt-2">
                <label class="form-label">Estado</label>
                <input type="text" v-model="state" class="form-control">
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">Municipio / Delegación</label>
                <input type="text" v-model="municipality" class="form-control">
            </div>
            
            <div class="col-md-6 pt-2">
                <label class="form-label">Ciudad</label>
                <input type="text" v-model="city" class="form-control">
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">Colonia</label>
                <input type="text" v-model="colony" class="form-control">
            </div>

            <div class="col-md-6 pt-2">
                <label class="form-label">Calle</label>
                <input type="text" v-model="street" class="form-control">
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 pt-2">
                <label class="form-label">Número exterior</label>
                <input type="text" v-model="externalNumber" class="form-control">
            </div>
            
            <div class="col-md-6 pt-2">
                <label class="form-label">Número interior</label>
                <input type="text" v-model="internalNumber" class="form-control">
            </div>
        </div>

        <div class="d-grid gap-2 d-md-flex justify-content-md-end pt-2">
            <button type="submit" class="btn btn-primary">Guardar</button>
        </div>
    </form>
  </div>
</div>
</template>

<script>
export default {
  data: function () {
    return {
      name: "",
      lastName: "",
      postalCode: "",
      country: "",
      state: "",
      municipality: "",
      city: "",
      colony: "",
      street: "",
      externalNumber: "",
      internalNumber: ""
    }
  },
  created: function(){
      console.log("ssdsds")
  },
  watch:{
      postalCode: function(value){
          console.log(value);
      }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
