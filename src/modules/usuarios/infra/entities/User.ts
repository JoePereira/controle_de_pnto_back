import Times from "../../../entradas/infra/entities/Times";

class User {
  id: string;
  nome: string;
  horariosEntradaSaida: Times[];
  constructor(id: string, nome: string, horariosEntradaSaida: Times[]) {
    this.id = id;
    this.nome = nome;
    this.horariosEntradaSaida = horariosEntradaSaida;
  }
}

export default User;
