function calcularMasaCorporal(peso,altura){
frase=""
  if(indicemasacorporal>=18.5 && indicemasacorporal<=24.9)    frase+="correcto"
  else
  if(indicemasacorporal<=15)                                  frase+="delgadez muy severa"
  else
  if(indicemasacorporal>=15 && indicemasacorporal<=15.9)      frase+="delgadez severa"   
  else
  if(indicemasacorporal<=16 && indicemasacorporal>=14)        frase+="delgadez"       
  else    
  if(indicemasacorporal>=25 && indicemasacorporal<=29.9)      frase+="sobrepeso"      
  else     
  if(indicemasacorporal>=30 && indicemasacorporal<=34.9)      frase+="obesidad moderada"   
  else     
  if(indicemasacorporal>=35 && indicemasacorporal<=39.9)      frase+="obesidad severa"    
  else
  if(indicemasacorporal>=40)                                  frase+="obesidad morbida"   
  return frase;
}      

function calcularMasaCorporal(){
  var peso=(document.getElementById("peso").value);
  var altura=(document.getElementById("altura").value);

  var imc = peso / (altura*altura);
  var estado = calcularEstado(IMC);
  document.getElementById("IMC").value = " MI IMC ES: "+imc;
  document.getElementById("ESTADO").value = " MI ESTADO ES: "+estado;

  if(peso <= 0 || altura <= 0){
    document.getElementById("ESTADO").value = "ingrese números validos.";
    document.getElementById("IMC").value = "ingrese números validos.";
    return;
  }
}

