object tom {
    var energia = 50
    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
    }
    method correr(distancia) {
        energia = energia - (distancia * 0.5)
    }
    method velMax() {
        return 5 + (energia * 0.1)
    }
    method energia() {return energia}

    method puedeCazar(unaDistancia) {
      return unaDistancia * 0.5 < energia
    }
    method cazarSiPuede(unRaton,unaDistancia) {
        if(self.puedeCazar(unaDistancia)) {
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
  var edad = 2
  method peso() {return edad * 20}
  method cumplirAnio() {edad +=1}
  //method edad() {return edad}
}

object nibbles {
  method peso() {return 35}
} 

// Inventar otro ratón// Inventar otro ratón