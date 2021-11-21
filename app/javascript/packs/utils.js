export default  {
    methods: {
        fireSwal(title,message,type){
            Swal.fire(title,message,type)
        },
        responseMessage: async function(response, message){
            console.log(response)
            
            if(response.errors && Object.keys(errors).length !== 0){
                this.fireSwal('¡Atención!',Object.values(errors).join(', '),'warning')
            }else{
                this.fireSwal('¡Éxito!',message,'success')
            }
        }
    }
};

